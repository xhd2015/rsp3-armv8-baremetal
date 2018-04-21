/*
 * VirtualFile.h
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_VIRTUALFILE_H_
#define INCLUDE_FILESYSTEM_VIRTUALFILE_H_
#include <data/String.h>
#include <data/StringRef.h>
#include <data/Vector.h>
#include <data/VectorRef.h>
#include <def.h>
#include <functional>
// 可能是普通目录，普通文件，设备文件或者一个挂载点。
class VirtualFile
{
public:
	using VirtualFileHandler = std::function<void(VirtualFile *)>;
	enum FileType:uint16_t {F_NON_EXISTS,F_FILE,F_DIRECTORY,
		F_DEVICE, F_SUB_FILE_SYSTEM,F_ROOTFS
	};
	enum SubFileSystemType : uint16_t {
		FS_NONE,FS_RAMFS, FS_ROOTFS,FS_FAT12,FS_FAT16,FS_FAT32,
	};
	VirtualFile(const String&    name);
	VirtualFile(const VirtualFile &rhs)=default;
	VirtualFile & operator=(const VirtualFile &rhs)=default;
	virtual ~VirtualFile();

	virtual FileType type()const;
	virtual SubFileSystemType subFSType()const;
	// 返回字节大小，强制要求：对于dir，返回子目录和子文件的数量，对于文件，返回占用的空间大小，
	//           建议要求： 对于其他，建议返回占用的空间
	virtual size_t   size()const;

	// 向下转型
	template <class SubType>
	AS_MACRO SubType * castAsSubType(){return static_cast<SubType*>(this);}
	template <class SubType>
	AS_MACRO const SubType * castAsSubType()const{return static_cast<const SubType*>(this);}


	// 下面的方法由子类提供不同的实现，这些方法的默认实现是针对ROOTFS的
	virtual bool          addFile(const VectorRef<String>& path,VirtualFile *file);
	virtual bool          addFile(VirtualFile *file);
	virtual VirtualFile*      removeFile(const VectorRef<String> &path);
	/**
	 * 文件不存在时返回true
	 * 文件存在，正常删除时返回true
	 * @param name
	 * @return 表明文件是否已经不存在
	 */
	virtual VirtualFile*     removeFile(const StringRef &name);
	virtual VirtualFile*  findFile(const VectorRef<String> &path);
	virtual VirtualFile*  findFile(const Vector<StringRef> &path);
	virtual VirtualFile*   findFile(const StringRef &name);
	virtual void           foreachFile(VirtualFileHandler handler);
	virtual String         read(size_t offset,size_t maxBytes);
	virtual size_t         write(const StringRef & ref,size_t offset);

	// setters and getters
	AS_MACRO const String & name() const {return _name;}
	AS_MACRO void         name(const String & name) { _name=name;}
	AS_MACRO VirtualFile* nextFile() {return _nextFile;}
	AS_MACRO const VirtualFile* nextFile() const {		return _nextFile;}
	AS_MACRO void nextFile(VirtualFile* nextFile) {		_nextFile = nextFile;}
	AS_MACRO VirtualFile* parent() {		return _parent;}
	AS_MACRO const VirtualFile* parent() const {		return _parent;}
	AS_MACRO void parent(VirtualFile* parent) {		_parent = parent;}
	AS_MACRO VirtualFile* subFile() {		return _subFile;}
	AS_MACRO const VirtualFile* subFile() const {		return _subFile;}
	AS_MACRO void subFile(VirtualFile* subFile) {		_subFile = subFile;}
private:
	String        _name;
	VirtualFile * _parent;
	VirtualFile * _nextFile;
	VirtualFile * _subFile;
};





#endif /* INCLUDE_FILESYSTEM_VIRTUALFILE_H_ */
