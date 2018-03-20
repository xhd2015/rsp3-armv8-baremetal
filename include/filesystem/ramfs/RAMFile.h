/*
 * RAMFile.h
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_RAMFS_RAMFILE_H_
#define INCLUDE_FILESYSTEM_RAMFS_RAMFILE_H_

#include <def.h>
#include <data_structures/String.h>

class RAMFile{
public:
	RAMFile(const String &name)
		:_name(name),
		 _data()
	{}

	AS_MACRO const String& content()const{return _data;}

	AS_MACRO void resize(size_t newSize){ _data.resize(newSize); }
	AS_MACRO size_t size()const{ return _data.getSize();}
	//实际占用的磁盘空间，可能压缩，可能扩展
	AS_MACRO size_t diskSize()const{ return _data.getCapacity();}

	//直接调用content的 append
	template <class ... Args>
	void   emplaceAppend(Args &&...args){ _data.append(std::forward<Args>(args)...);}
	void   rename(String &&name){ _name =  std::move(_name);}
	void   rename(const String &name){ _name = name;}
private:
	String _name;
	String _data;
};


#endif /* INCLUDE_FILESYSTEM_RAMFS_RAMFILE_H_ */
