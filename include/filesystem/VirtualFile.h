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
#include <filesystem/VirtualProxyDefinitions.h>
// 可能是普通目录，普通文件，设备文件或者一个挂载点。
class VirtualFile
{
public:
	using VirtualFileHandler = std::function<void(VirtualFile *)>;
	using FileType = ::FileType;
	using SubFileSystemType = ::SubFileSystemType;

	VirtualFile(const StringRef&    name);
	VirtualFile(const VirtualFile &rhs)=delete;
	VirtualFile & operator=(const VirtualFile &rhs)=delete;
	/**
	 * 该函数并不完成资源回收的动作。换句话说，回收占用的内存，
	 * 仍然是调用者的责任。
	 * 秉承谁分配，谁回收的原则。
	 */
	virtual ~VirtualFile();
	/**
	 * 文件的类型
	 * @return
	 */
	virtual FileType type()const;
	/**
	 * 文件所处的文件系统类型
	 * @return
	 */
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
	virtual VirtualFile*  removeFile(const VectorRef<String> &path);
	/**
	 * 文件不存在时返回true
	 * 文件存在，正常删除时返回true
	 * @param name
	 * @return 表明文件是否已经不存在
	 */
	virtual VirtualFile*   removeFile(const StringRef &name);
	virtual VirtualFile*   findFile(const VectorRef<String> &path);
	virtual VirtualFile*   findFile(const Vector<StringRef> &path);
	virtual VirtualFile*   findFile(const StringRef &name);
	virtual void           foreachFile(VirtualFileHandler handler);
	virtual String         read(size_t offset,size_t maxBytes);
	virtual size_t         write(const StringRef & ref,size_t offset);
	virtual VirtualFile*   createFile(const StringRef &name,FileType type)const;
	/**
	 * 依据当前文件产生一个新的文件，不包括文件的链接信息
	 * f非空
	 * @param f
	 * @return
	 */
	virtual VirtualFile*   copy()const;

	static void   destroyFileRecursively(VirtualFile *file);

	// setters and getters
	AS_MACRO const StringRef  name() const {return _name;}
	AS_MACRO void         name(const StringRef & name) { _name=name;}
	AS_MACRO VirtualFile* parent() {		return _parent;}
	AS_MACRO const VirtualFile* parent() const {		return _parent;}
	AS_MACRO VirtualFile* previousFile() {		return _previousFile;}
	AS_MACRO const VirtualFile* previousFile() const {		return _previousFile;}
	AS_MACRO void  previousFile(VirtualFile *prev)  {		 _previousFile=prev;}
	AS_MACRO VirtualFile* nextFile() {return _nextFile;}
	AS_MACRO const VirtualFile* nextFile() const {		return _nextFile;}
	AS_MACRO void nextFile(VirtualFile* nextFile) {		_nextFile = nextFile;}
	AS_MACRO void parent(VirtualFile* parent) {		_parent = parent;}
	AS_MACRO VirtualFile* subFile() {		return _subFile;}
	AS_MACRO const VirtualFile* subFile() const {		return _subFile;}
	AS_MACRO void subFile(VirtualFile* subFile) {		_subFile = subFile;}

private:
	String        _name;
	VirtualFile * _parent;
	VirtualFile * _previousFile;
	VirtualFile * _nextFile;
	VirtualFile * _subFile;
};





#endif /* INCLUDE_FILESYSTEM_VIRTUALFILE_H_ */
