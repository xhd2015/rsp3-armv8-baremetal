/*
 * FAT32VirtualFile.h
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT32VIRTUALFILE_H_
#define INCLUDE_FILESYSTEM_FAT32VIRTUALFILE_H_
#include <filesystem/VirtualFile.h>
#include <filesystem/fat/FAT32EntryTable.h>
#include <filesystem/fat/FATDirEntryTable.h>
#include <io/block/ByteReader.h>
#include <generic_util.h>

class FAT32VirtualFile
	:public VirtualFile
{
public:
	enum {
		DIR_ENTRY_TABLE_LOAD_BIT=0,
		IS_ROOT_BIT=1,
		SUB_ENTRIES_BUILT_BIT=2
	};
	FAT32VirtualFile(const StringRef&  name,ByteReader &reader,FAT32ExtBPB &bpb,FAT32EntryTable &fat,FileType type,size_t indexInParentTable,FAT32Entry entry);
	virtual ~FAT32VirtualFile();
	static void               readBPB(ByteReader &reader,FAT32ExtBPB &bpb,size_t sec);
	static void               readFAT(ByteReader &reader,FAT32ExtBPB &bpb,FAT32EntryTable &fat,size_t sec);
	static FAT32VirtualFile * makeRootFile(ByteReader &reader,FAT32ExtBPB &bpb,FAT32EntryTable &fat);
	virtual FileType type()const override;
	virtual SubFileSystemType subFSType()const override;
	virtual size_t   size()const override;

	virtual bool          addFile(const VectorRef<String>& path,VirtualFile *file) override;
	virtual bool          addFile(VirtualFile *file) override;
	virtual VirtualFile*     removeFile(const VectorRef<String> &path) override;
	virtual VirtualFile*     removeFile(const StringRef &name) override;
	virtual VirtualFile*  findFile(const VectorRef<String> &path) override;
	virtual VirtualFile*  findFile(const Vector<StringRef> &path) override;
	virtual VirtualFile*   findFile(const StringRef &name) override;
	virtual void     foreachFile(VirtualFileHandler handler) override;
	virtual String         read(size_t offset,size_t maxBytes) override;
	virtual size_t         write(const StringRef & ref,size_t offset) override;
	virtual VirtualFile*   createFile(const StringRef &name,FileType type)const override;

	FAT32VirtualFile * subFile2(size_t i);
	AS_MACRO bool  rootDir()const { return _flags & (1<<IS_ROOT_BIT);}
	AS_MACRO bool  dirEntryTableLoaded()const{ return _flags & (1<<DIR_ENTRY_TABLE_LOAD_BIT);}
	AS_MACRO bool  subEntriesBuilt()const{ return _flags & (1<<SUB_ENTRIES_BUILT_BIT);}

	AS_MACRO void  rootDir(bool v) { setBit(_flags, IS_ROOT_BIT, v);}
	AS_MACRO void  dirEntryTableLoaded(bool v) { setBit(_flags,DIR_ENTRY_TABLE_LOAD_BIT,v);}
	AS_MACRO void  subEntriesBuilt(bool v) { setBit(_flags,SUB_ENTRIES_BUILT_BIT,v);}
	AS_MACRO bool  isDir()const {	return rootDir() || _type==F_DIRECTORY;}
	AS_MACRO const FATDirEntryTable & fatDirTable()const { return _table;}
private:
	void clearSubEntries();
	void buildSubEntries();
	/**
	 * 当需要强制更新时，首先将相应的flag位置为0
	 */
	void loadDirEntryTable();

	/**
	 * 递归回收子节点，兄弟节点。
	 * 单侧回收。在两个方向上都是单向传播的。
	 * @param file
	 */
	static void clearSubEntries(FAT32VirtualFile *file);
private:
	ByteReader          &_reader;
	FAT32ExtBPB         &_bpb;
	FAT32EntryTable     &_fat;
	uint8_t             _flags;
	FileType            _type;
	FATDirEntryTable    _table;// 该项为目录时使用，表示目录的内容（至少是一个字节）
	size_t              _indexInParentTable; // FAT的子目录/子文件是由父目录决定的。
	FAT32Entry          _entry;

};



#endif /* INCLUDE_FILESYSTEM_FAT32VIRTUALFILE_H_ */
