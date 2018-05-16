#include <filesystem/fat/FAT32Debugger.h>
#include <io/IntegerFormatter.h>


#include <memory/MemoryManager.h>
#include <io/Output.h>


void Fat32Dubugger::dumpBPBTypeInformation()
{
	kout << "sizeof(BPB) = " << sizeof(FAT_BPB) << "\n";
	kout << "sizeof(ExtBPB32) = " << sizeof(FAT32ExtBPB) << "\n";
	kout << "offsetof(ExtBPB32,BS_jmpBoot) = " << offsetof(FAT32ExtBPB,BS_jmpBoot) << "\n" ;
	kout << "offsetof(ExtBPB32,BS_OEMName) = " << offsetof(FAT32ExtBPB,BS_OEMName) << "\n" ;
	kout << "offsetof(ExtBPB32,bytesPerSec) = " << offsetof(FAT32ExtBPB,bytesPerSec) << "\n" ;
	kout << "offsetof(ExtBPB32,secPerClus) = " << offsetof(FAT32ExtBPB,secPerClus) << "\n" ;
	kout << "offsetof(ExtBPB32,rsvdSecCnt) = " << offsetof(FAT32ExtBPB,rsvdSecCnt) << "\n" ;
	kout << "offsetof(ExtBPB32,numFATs) = " << offsetof(FAT32ExtBPB,numFATs) << "\n" ;
	kout << "offsetof(ExtBPB32,rootEntCnt) = " << offsetof(FAT32ExtBPB,rootEntCnt) << "\n" ;
	kout << "offsetof(ExtBPB32,totSec16) = " << offsetof(FAT32ExtBPB,totSec16) << "\n" ;
	kout << "offsetof(ExtBPB32,media) = " << offsetof(FAT32ExtBPB,media) << "\n" ;
	kout << "offsetof(ExtBPB32,FATSz16) = " << offsetof(FAT32ExtBPB,FATSz16) << "\n" ;
	kout << "offsetof(ExtBPB32,secPerTrk) = " << offsetof(FAT32ExtBPB,secPerTrk) << "\n" ;
	kout << "offsetof(ExtBPB32,numHeads) = " << offsetof(FAT32ExtBPB,numHeads) << "\n" ;
	kout << "offsetof(ExtBPB32,hiddSec) = " << offsetof(FAT32ExtBPB,hiddSec) << "\n" ;
	kout << "offsetof(ExtBPB32,totSec32) = " << offsetof(FAT32ExtBPB,totSec32) << "\n" ;
	kout << "offsetof(ExtBPB32,FATSz32) = " << offsetof(FAT32ExtBPB,FATSz32) << "\n" ;
	kout << "offsetof(ExtBPB32,extFlags) = " << offsetof(FAT32ExtBPB,extFlags) << "\n" ;
	kout << "offsetof(ExtBPB32,FSVer) = " << offsetof(FAT32ExtBPB,FSVer) << "\n" ;
	kout << "offsetof(ExtBPB32,rootClus) = " << offsetof(FAT32ExtBPB,rootClus) << "\n" ;
	kout << "offsetof(ExtBPB32,FSInfo) = " << offsetof(FAT32ExtBPB,FSInfo) << "\n" ;
	kout << "offsetof(ExtBPB32,bkBootSe) = " << offsetof(FAT32ExtBPB,bkBootSe) << "\n" ;
	kout << "offsetof(ExtBPB32,reserved) = " << offsetof(FAT32ExtBPB,reserved) << "\n" ;
	kout << "offsetof(ExtBPB32,BS_DrvNum) = " << offsetof(FAT32ExtBPB,BS_DrvNum) << "\n" ;
	kout << "offsetof(ExtBPB32,BS_Reserved1) = " << offsetof(FAT32ExtBPB,BS_Reserved1) << "\n" ;
	kout << "offsetof(ExtBPB32,BS_BootSig) = " << offsetof(FAT32ExtBPB,BS_BootSig) << "\n" ;
	kout << "offsetof(ExtBPB32,BS_VolID) = " << offsetof(FAT32ExtBPB,BS_VolID) << "\n" ;
	kout << "offsetof(ExtBPB32,BS_VolLab) = " << offsetof(FAT32ExtBPB,BS_VolLab) << "\n" ;
	kout << "offsetof(ExtBPB32,BS_FilSysType) = " << offsetof(FAT32ExtBPB,BS_FilSysType) << "\n" ;
	kout << "offsetof(ExtBPB32,undefined) = " << offsetof(FAT32ExtBPB,undefined) << "\n" ;
	kout << "offsetof(ExtBPB32,Signature_word) = " << offsetof(FAT32ExtBPB,Signature_word) << "\n" ;

}
void Fat32Dubugger::dumpBPB(FAT_BPB *bpb)
{
	kout << "bpb->bytesPerSec = " << bpb->bytesPerSec << "\n";
	kout << "bpb->secPerClus = " << bpb->secPerClus << "\n";
	kout << "bpb->rsvdSecCnt = " << bpb->rsvdSecCnt << "\n";
	kout << "bpb->numFATs = " << bpb->numFATs << "\n";
	kout << "bpb->rootEntCnt = " << bpb->rootEntCnt << "\n";
	kout << "bpb->totSec16 = " << bpb->totSec16 << "\n";
	kout << "bpb->media = " << bpb->media << "\n";
	kout << "bpb->FATSz16 = " << bpb->FATSz16 << "\n";
	kout << "bpb->secPerTrk = " << bpb->secPerTrk << "\n";
	kout << "bpb->numHeads = " << bpb->numHeads << "\n";
	kout << "bpb->hiddSec = " << bpb->hiddSec << "\n";
	kout << "bpb->totSec32 = " << bpb->totSec32 << "\n";
}

void Fat32Dubugger::dumpExtBPB32(FAT32ExtBPB *bpb)
{
	dumpBPB(bpb);
	kout << "bpb->FATSz32 = " << bpb->FATSz32 << "\n";
	kout << "bpb->extFlags = " << bpb->extFlags << "\n";
	kout << "bpb->FSVer = " << bpb->FSVer << "\n";
	kout << "bpb->rootClus = " << bpb->rootClus << "\n";
	kout << "bpb->FSInfo = " << bpb->FSInfo << "\n";
	kout << "bpb->bkBootSe = " << bpb->bkBootSe << "\n";
	kout << "bpb->reserved = " << bpb->reserved << "\n";
	kout << "bpb->BS_DrvNum = " << bpb->BS_DrvNum << "\n";
	kout << "bpb->BS_Reserved1 = " << bpb->BS_Reserved1 << "\n";
	kout << "bpb->BS_BootSig = " << bpb->BS_BootSig << "\n";
	kout << "bpb->BS_VolID = " << bpb->BS_VolID << "\n";
	kout << "bpb->BS_VolLab = " << bpb->BS_VolLab << "\n";
	kout << "bpb->BS_FilSysType = " << bpb->BS_FilSysType << "\n";
	kout << "bpb->undefined = " << bpb->undefined << "\n";
	kout << "bpb->Signature_word = " << bpb->Signature_word << "\n";

}

void Fat32Dubugger::dumpDirectoryEntry(FATDirEntry dentry)
{
	if( dentry.uni_isLongNameEntry())
	{
		FATLongNameEntry lentry = *reinterpret_cast<FATLongNameEntry*>(&dentry);
		kout << "lentry.ord = " << Hex(lentry.ord) << "\n";
		kout << "lentry.name1 = " << StringRef(lentry.name1,sizeof(lentry.name1)) << "\n";
		kout << "lentry.attr = " << Hex(lentry.attr) << "\n";
		kout << "lentry.type = " << Hex(lentry.type) << "\n";
		kout << "lentry.chksum = " << Hex(lentry.chksum) << "\n";
		kout << "lentry.name2 = " << StringRef(lentry.name2,sizeof(lentry.name2))<< "\n";
		kout << "lentry.fstClusLO = " << Hex(lentry.fstClusLO) << "\n";
		kout << "lentry.name3 = " << StringRef(lentry.name3,sizeof(lentry.name3))<< "\n";
	}else{
		kout << "dentry.name = " << StringRef(dentry.name,11) << "\n";
		kout << "dentry.attr = " << Hex(dentry.attr) << "\n";
		kout << "dentry.NTRes = " << Hex(dentry.NTRes) << "\n";
		kout << "dentry.crtTimeTenth = " << dentry.crtTimeTenth << "\n";
		kout << "dentry.crtTime = " << dentry.crtTime << "\n";
		kout << "dentry.crtDate = " << dentry.crtDate << "\n";
		kout << "dentry.lstAccData = " << dentry.lstAccData << "\n";
		kout << "dentry.fstClusHI = " << Hex(dentry.fstClusHI) << "\n";
		kout << "dentry.wrtTime = " << dentry.wrtTime << "\n";
		kout << "dentry.wrtDate = " << dentry.wrtDate << "\n";
		kout << "dentry.fstClusLO = " << Hex(dentry.fstClusLO) << "\n";
		kout << "dentry.fileSize = " << Hex(dentry.fileSize) << "\n";
	}
}

void Fat32Dubugger::dumpDirNames(FATDirEntry dentry)
{
	if( dentry.uni_isLongNameEntry())
	{
		FATLongNameEntry lentry = *reinterpret_cast<FATLongNameEntry*>(&dentry);
		kout << "lentry.name = " << lentry.getAsAsciiName() << "\n";
	}else{
		kout << "dentry.name = " << StringRef(dentry.name,sizeof(dentry.name)) << "\n";
	}
}

void Fat32Dubugger::dumpDirNames(FATDirEntry *dentry,size_t count)
{
	for(size_t i=0;i!=count;++i)
		dumpDirNames(dentry[i]);
}


