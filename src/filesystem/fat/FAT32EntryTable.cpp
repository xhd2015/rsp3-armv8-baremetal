/*
 * FAT32EntryTable.cpp
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */
#include <filesystem/fat/FAT32EntryTable.h>
#include <utility>

FAT32EntryTable::FAT32EntryTable(ByteReader &breader,FAT32ExtBPB *e32bpb)
	:Vector(std::move(breader.read<FAT32Entry>(e32bpb->rsvdSecCnt * e32bpb->bytesPerSec,e32bpb->uni_getFatSize() * e32bpb->bytesPerSec / sizeof(FAT32Entry)))),breader(breader),e32bpb(e32bpb)
{
}

FAT32EntryTable::FAT32EntryTable(Vector<FAT32Entry> && table,ByteReader &breader,FAT32ExtBPB *e32bpb)
	:Vector(std::move(table)),breader(breader),e32bpb(e32bpb){}

void FAT32EntryTable::foreachEntry(EntryHandle handle,FAT32Entry startEntry)const
{
	size_t i=0;
	while(!startEntry.isLast())
	{
		handle(startEntry,i++);
		startEntry = next(startEntry); // next
	}
}
FAT32Entry  FAT32EntryTable::next(FAT32Entry fentry)const
{
	return (*this)[fentry.getAsInt()];
}
FAT32Entry  FAT32EntryTable::locateFileOffset(FAT32Entry fentry,size_t offset)const
{
	for(size_t i=0,times=offset/e32bpb->getClusterByteSize();i!=times && !fentry.isLast();++i)
		fentry=next(fentry);
	return fentry;
}
