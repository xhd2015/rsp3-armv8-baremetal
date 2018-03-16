/*
 * testFAT32SizeIsSecSize.cpp
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */




#include <io/Output.h>
#include <test/test_base.h>
#include <filesystem/fat/FAT_BPB.h>
#include <filesystem/fat/FAT32ExtBPB.h>

//#define my_offsetof(Type,Field) reinterpret_cast<size_t>(&(reinterpret_cast<Type*>(0)->Field))
#define my_offsetof offsetof

bool testFAT32SizeIsSecSize()
{

	kout << "sizeof(BPB) = " << sizeof(FAT_BPB) << ", sizeof(Ext32BPB)=" << sizeof(FAT32ExtBPB) << "\n" ;
	FAT32ExtBPB bpb;
	kout << "&bpb = " << &bpb << "\n";

//	kout << "offsetof(ExtBPB32,BS_jmpBoot) = " << my_offsetof(ExtBPB32,BS_jmpBoot) << "\n" ;
//	kout << "offsetof(ExtBPB32,BS_OEMName) = " << my_offsetof(ExtBPB32,BS_OEMName) << "\n" ;
//	kout << "offsetof(ExtBPB32,bytesPerSec) = " << my_offsetof(ExtBPB32,bytesPerSec) << "\n" ;
//	kout << "offsetof(ExtBPB32,secPerClus) = " << my_offsetof(ExtBPB32,secPerClus) << "\n" ;
//	kout << "offsetof(ExtBPB32,rsvdSecCnt) = " << my_offsetof(ExtBPB32,rsvdSecCnt) << "\n" ;
//	kout << "offsetof(ExtBPB32,numFATs) = " << my_offsetof(ExtBPB32,numFATs) << "\n" ;
//	kout << "offsetof(ExtBPB32,rootEntCnt) = " << my_offsetof(ExtBPB32,rootEntCnt) << "\n" ;
//	kout << "offsetof(ExtBPB32,totSec16) = " << my_offsetof(ExtBPB32,totSec16) << "\n" ;
//	kout << "offsetof(ExtBPB32,media) = " << my_offsetof(ExtBPB32,media) << "\n" ;
//	kout << "offsetof(ExtBPB32,FATSz16) = " << my_offsetof(ExtBPB32,FATSz16) << "\n" ;
//	kout << "offsetof(ExtBPB32,secPerTrk) = " << my_offsetof(ExtBPB32,secPerTrk) << "\n" ;
//	kout << "offsetof(ExtBPB32,numHeads) = " << my_offsetof(ExtBPB32,numHeads) << "\n" ;
//	kout << "offsetof(ExtBPB32,hiddSec) = " << my_offsetof(ExtBPB32,hiddSec) << "\n" ;
//	kout << "offsetof(ExtBPB32,totSec32) = " << my_offsetof(ExtBPB32,totSec32) << "\n" ;
//	kout << "offsetof(ExtBPB32,FATSz32) = " << my_offsetof(ExtBPB32,FATSz32) << "\n" ;
//	kout << "offsetof(ExtBPB32,extFlags) = " << my_offsetof(ExtBPB32,extFlags) << "\n" ;
//	kout << "offsetof(ExtBPB32,FSVer) = " << my_offsetof(ExtBPB32,FSVer) << "\n" ;
//	kout << "offsetof(ExtBPB32,rootClus) = " << my_offsetof(ExtBPB32,rootClus) << "\n" ;
//	kout << "offsetof(ExtBPB32,FSInfo) = " << my_offsetof(ExtBPB32,FSInfo) << "\n" ;
//	kout << "offsetof(ExtBPB32,bkBootSe) = " << my_offsetof(ExtBPB32,bkBootSe) << "\n" ;
//	kout << "offsetof(ExtBPB32,reserved) = " << my_offsetof(ExtBPB32,reserved) << "\n" ;
//	kout << "offsetof(ExtBPB32,BS_DrvNum) = " << my_offsetof(ExtBPB32,BS_DrvNum) << "\n" ;
//	kout << "offsetof(ExtBPB32,BS_Reserved1) = " << my_offsetof(ExtBPB32,BS_Reserved1) << "\n" ;
//	kout << "offsetof(ExtBPB32,BS_BootSig) = " << my_offsetof(ExtBPB32,BS_BootSig) << "\n" ;
//	kout << "offsetof(ExtBPB32,BS_VolID) = " << my_offsetof(ExtBPB32,BS_VolID) << "\n" ;
//	kout << "offsetof(ExtBPB32,BS_VolLab) = " << my_offsetof(ExtBPB32,BS_VolLab) << "\n" ;
//	kout << "offsetof(ExtBPB32,BS_FilSysType) = " << my_offsetof(ExtBPB32,BS_FilSysType) << "\n" ;
//	kout << "offsetof(ExtBPB32,undefined) = " << my_offsetof(ExtBPB32,undefined) << "\n" ;
//	kout << "offsetof(ExtBPB32,Signature_word) = " << my_offsetof(ExtBPB32,Signature_word) << "\n" ;

	if(my_offsetof(FAT32ExtBPB,Signature_word)!=510)
	{
		kout << FATAL << "Signature_word is not placed correctly,"<< "it should be 510, but the real offset is " << my_offsetof(FAT32ExtBPB,Signature_word) <<".\n";
	}
	if(sizeof(FAT32ExtBPB) != 512)
	{
		kout << FATAL << "sizeof(ExtBPB32)="<<sizeof(FAT32ExtBPB) <<" is not 512.\n";
	}

	if(sizeof(FAT32ExtBPB) != 512)
		return false;

	return true;
}
