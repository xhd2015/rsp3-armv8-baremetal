/*
 * FAT32VirtualFile.cpp
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */
#include <filesystem/FAT32VirtualFile.h>
#include <asm_instructions.h>
#include <generic/error.h>
FAT32VirtualFile::FAT32VirtualFile(const StringRef&  name,ByteReader &reader,FAT32ExtBPB &bpb,FAT32EntryTable &fat,FileType type,size_t indexInParentTable,FAT32Entry entry)
	:VirtualFile(name),
	 _reader(reader),
	 _bpb(bpb),
	 _fat(fat),
	 _flags(0),
	 _type(type),
	 _table(),
	 _indexInParentTable(indexInParentTable),
	 _entry(entry)
{}

FAT32VirtualFile::~FAT32VirtualFile()
{
}
void         FAT32VirtualFile::readBPB(ByteReader &reader,FAT32ExtBPB &bpb,size_t sec)
{
	reader.read(sec*512,&bpb, 512);
}
void         FAT32VirtualFile::readFAT(ByteReader &reader,FAT32ExtBPB &bpb,FAT32EntryTable &fat,size_t sec)
{
	size_t offset=(bpb.rsvdSecCnt+sec)*bpb.bytesPerSec;
	size_t fatSize = bpb.uni_getFatSize() * bpb.bytesPerSec;
	if(fat.resize(fatSize/sizeof(fat[0])))
	{
		if(reader.read(offset,fat.data(),fatSize)!=fatSize)
			fat.clear();
	}
}
FAT32VirtualFile * FAT32VirtualFile::makeRootFile(ByteReader &reader,FAT32ExtBPB &bpb,FAT32EntryTable &fat)
{
	auto p=new FAT32VirtualFile("",reader,bpb,fat,F_DIRECTORY,0,bpb.getRootFATEntry());
	if(p)
	{
		p->loadDirEntryTable();
		p->rootDir(true);
		p->name(p->_table.volumnLabel());
	}
	return p;
}

VirtualFile::FileType FAT32VirtualFile::type()const
{
	return _type;
}
VirtualFile::SubFileSystemType FAT32VirtualFile::subFSType()const
{
	return (rootDir()?FS_FAT32:FS_NONE);
}
// TODO 返回FAT文件系统的大小
size_t   FAT32VirtualFile::size()const
{
	if(!rootDir() && _type==F_FILE)
	{
		auto file=parent()->castAsSubType<FAT32VirtualFile>();
		return file->_table[_indexInParentTable].fileSize;
	}else{
		return 0;
	}
}
bool          FAT32VirtualFile::addFile(const VectorRef<String>& path,VirtualFile *file)
{
	return true;
}
bool          FAT32VirtualFile::addFile(VirtualFile *file)
{
	return true;
}
VirtualFile*     FAT32VirtualFile::removeFile(const VectorRef<String> &path)
{
	return nullptr;
}
VirtualFile*     FAT32VirtualFile::removeFile(const StringRef &name)
{
	return nullptr;
}
VirtualFile*  FAT32VirtualFile::findFile(const VectorRef<String> &path)
{
	buildSubEntries();
	return VirtualFile::findFile(path);
}
VirtualFile*  FAT32VirtualFile::findFile(const Vector<StringRef> &path)
{
	buildSubEntries();
	return VirtualFile::findFile(path);
}
VirtualFile*   FAT32VirtualFile::findFile(const StringRef &name)
{
	buildSubEntries();
	return VirtualFile::findFile(name);
}
void     FAT32VirtualFile::foreachFile(VirtualFileHandler handler)
{
	// 需要首先构建树结构
	buildSubEntries();
	VirtualFile::foreachFile(handler);
}
String         FAT32VirtualFile::read(size_t offset,size_t maxBytes)
{
	if(rootDir() || _type!=F_FILE )
		return "";

	FAT32Entry  fatEntry = _entry;
	fatEntry = _fat.locateFileOffset(fatEntry,_bpb.getClusterByteSize(), offset);
	size_t byteCount=maxBytes;
	String content;
	if(!fatEntry.isLast())//can be located
	{
		size_t offsetInClus = offset % _bpb.getClusterByteSize();
		if(byteCount==SIZE_MAX)
			byteCount = size() - offset;
		if(offset + byteCount <= size()) // not overflow
		{
			const size_t  clusBytes = _bpb.getClusterByteSize();
			//read first cluster
			content.append(_reader.read(_bpb.getClusterFirstSector(fatEntry.getAsInt())*_bpb.bytesPerSec + offsetInClus,clusBytes - offsetInClus));
			size_t leftByte = byteCount - (clusBytes - offsetInClus);
			fatEntry = _fat.next(fatEntry);
			_fat.foreachEntry([this,&content,&leftByte,clusBytes](FAT32Entry entry,size_t index){
				if(leftByte)
				{
					size_t thisReadByte = leftByte > clusBytes ? clusBytes:leftByte;
					content.append(_reader.read(_bpb.getClusterFirstSector(entry.getAsInt()) * _bpb.bytesPerSec, thisReadByte / sizeof(char)));
					leftByte -= thisReadByte;
				}
			}, fatEntry);
		}
	}

	return std::move(content);
}
size_t         FAT32VirtualFile::write(const StringRef & ref,size_t offset)
{
	return 0;
}
VirtualFile*   FAT32VirtualFile::createFile(const StringRef &name,FileType type)const
{
	return nullptr;
	if(type == F_FILE || type==F_DIRECTORY)
	{
//		auto f = new FAT32VirtualFile(name,_reader,_bpb,_fat,type,);
//		return f;
	}
	return nullptr;
}
void FAT32VirtualFile::clearSubEntries()
{
	if(!isDir())
		return;
	clearSubEntries(this->subFile()->castAsSubType<FAT32VirtualFile>());
	this->subFile(nullptr);
}
void FAT32VirtualFile::buildSubEntries()
{
	if(!isDir() || subEntriesBuilt())
		return;
	loadDirEntryTable();

	// 将旧的所有子目录清空
	clearSubEntries();
	// _TODO 增加内存不足的异常报告，参见2018年4月8日23:53:31的todo
	FAT32VirtualFile * builtSubFile=nullptr;
	FAT32VirtualFile * last=nullptr;
	for(size_t i=0;i!=_table.size();++i)
	{
		FileType   type=(_table[i].isFile()? F_FILE :
						(_table[i].isDir()?  F_DIRECTORY: F_NON_EXISTS));
		if(type!=F_NON_EXISTS)
		{
			auto it=new FAT32VirtualFile(
					_table[i].getLongName(),
					_reader,
					_bpb,
					_fat,
					type,
					i, // index in parent
					_table[i].getFirstClusIndex()
			);
			reportErrorOn(it==nullptr,"no enough space \n");
			if(!builtSubFile) //init file
				builtSubFile=it;
			if(last)
			{
				last->nextFile(it);
				it->previousFile(last);
			}
			last=it;
		}
	}
	if(builtSubFile)
	{
		builtSubFile->parent(this);
		this->subFile(builtSubFile);
	}

	subEntriesBuilt(true);
}
void FAT32VirtualFile::loadDirEntryTable()
{
	if(!isDir() || dirEntryTableLoaded())
		return;
	_table.clear();
	size_t eachClusCount = _bpb.secPerClus *  _bpb.bytesPerSec;
	auto entry = _entry;
	while(!entry.isLast())
	{
		auto vec=_reader.read(_bpb.getClusterFirstSector(entry.getAsInt()) * _bpb.bytesPerSec,eachClusCount);
		_table.append(vec.castMove<FATDirEntry>());
		entry = _fat.next(entry);
	}
	dirEntryTableLoaded(true);
}
void FAT32VirtualFile::clearSubEntries(FAT32VirtualFile *file)
{
	if(file)
	{
		auto fsub = file->VirtualFile::subFile();
		auto fnext = file->VirtualFile::nextFile();
		delete file;
		clearSubEntries(fsub->castAsSubType<FAT32VirtualFile>());
		clearSubEntries(fnext->castAsSubType<FAT32VirtualFile>());
	}
}
