/*
 * main.cpp
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */

#include <iostream>
#include <fstream>
#include <MemoryManager.h>
#include <arch/host/SectorReaderHelper.h>
#include <filesystem/fat/FAT32Debugger.h> // for debug,maybe ommited in release
#include <filesystem/fat/FAT32ReadUtil.h> // for reading fat32,without modifying it.
#include <filesystem/fat/FATDirEntryTable.h>
#include <data_structures/Vector.h>
#include <data_structures/StringRef.h>
#include <IntegerFormatter.h>


#define IMG_FILE R"(C:\Users\13774\Desktop\temp_for_gui\2017-11-29-raspbian-stretch\partition1.img)"
using namespace std;
int main()
{
	sys_sectorReaderHelper.setCurrentFile(IMG_FILE);
	SectorReader sreader;

//	ifstream img(IMG_FILE,std::ifstream::binary);

	char buffer[512];
//	img.read(buffer, 512);
	sreader.read(0,buffer,1);

//	BPB *bpb = reinterpret_cast<BPB*>(buffer);

	Fat32Dubugger::dumpBPBTypeInformation();
	kout << "dump information of bpb\n";

	FAT32ExtBPB *e32bpb = reinterpret_cast<FAT32ExtBPB*>(buffer);
//	size_t fatSize = e32bpb->uni_getFatSize() * e32bpb->bytesPerSec;
//	FAT32Entry* fat = new FAT32Entry[e32bpb->uni_getFatSize() * e32bpb->bytesPerSec];
	Vector<FAT32Entry> fat(e32bpb->uni_getFatSize() * e32bpb->bytesPerSec / sizeof(FAT32Entry));
//	img.seekg(e32bpb->rsvdSecCnt * e32bpb->bytesPerSec,ifstream::beg);
//	img.read(reinterpret_cast<char*>(fat),fatSize);
	sreader.read(e32bpb->rsvdSecCnt,fat.getData(),e32bpb->uni_getFatSize());

	Fat32Dubugger::dumpExtBPB32(e32bpb);
	kout << "fat size = " << e32bpb->uni_getFatSize() << "\n";
	kout << "total sector count = " << e32bpb->uni_getTotalSecCount() << "\n";
	kout << "count of clusters = " << e32bpb->uni_getClustersCount() << "\n";\
	kout << "root dir first sector = " << e32bpb->getRootDirFirstSector() <<"\n";//至少是686, 686=clus#0,687=clus#1,688=clus#2
	kout << "type index = " << static_cast<size_t>(e32bpb->uni_determineFATType()) << "\n";

	Vector<FATDirEntry> dirVec = FAT32ReadUtil::readAllDirEntries(fat, e32bpb->rootClus, e32bpb, sreader);

	Fat32Dubugger::dumpDirNames(dirVec.getData(), dirVec.getSize());

//	FATDirectoryEntry dirContent[512/sizeof(FATDirectoryEntry)];
//	img.seekg(e32bpb->getClusterFirstSector(e32bpb->rootClus) * 512, ifstream::beg);
//	img.read(reinterpret_cast<char*>(dirContent),sizeof(dirContent));

	size_t i = FAT32ReadUtil::findByLongName(dirVec.getData(), dirVec.getSize(),"overlays");//"xxxhhhddd"
	kout << "found index = " << Hex(i) << "\n";
	i = FAT32ReadUtil::findByLongName(dirVec.getData(), dirVec.getSize(), "xxxhhhddd");
	kout <<"found index = " <<Hex(i) << "\n";

	i = FAT32ReadUtil::findByShortName(dirVec.getData(), dirVec.getSize(),"OVERLAYS","");
	kout << "found short index = " << Hex(i) << "\n";

	i = FAT32ReadUtil::findByShortName(dirVec.getData(), dirVec.getSize(),"LICENC~1","BRO");
	kout << "found short index = " << Hex(i) << "\n";

	i = FAT32ReadUtil::findByShortName(dirVec.getData(), dirVec.getSize(),"ISSUE","TXT");
	kout << "found short index = " << Hex(i) << "\n";

	kout << INFO << "ls:\n";
	Vector<const FATDirEntry*> files = FAT32ReadUtil::filterInDirFileEntries(dirVec);
	for(size_t i=0;i!=files.getSize();++i)
		kout << files[i]->getLongName() << "  ";
	kout << "\n";


//	const char *catfile="config.txt"; //good
	const char *catfile="LICENSE.oracle"; // good
//	const char *catfile="cmdline.txt"; // good
//	const char *catfile = "COPYING.linux"; // much more content,but still fine
//	const char *catfile = "kernel7.img";// segment fault if file so big
	kout << INFO << "cat " << catfile << ":\n";
	SectorReaderToByteReader breader(sreader);
	FAT32EntryTable fat32Table(std::move(fat),breader,e32bpb);
	FATDirEntryTable dirTable(breader,fat32Table,e32bpb->rootClus,e32bpb);
	Vector<char> vec = dirTable.readFile(catfile,0,1024);
	kout << vec << "\n";

	// next is create a file, a directory
	// add something to a directory
	// input something to a file
	// delete a file/dir
	// extend or shrink
	// but it is not so urgent.
	// we'd better go ahead for IO and/or Interrupt
	// then virtual memory and process
	// then standard c++ library
	// then a user interface to access everything

	return 0;
}


