
#include <def.h>
#include <arch/qemu-virt/util.h>
#include <asm_instructions.h>
#include <cstring>
#include <io/uart/XilinxUARTPS.h>
#include <new>
#include <generic/cpu.h>
#include <io/sd/CardSpecData.h>
#include <io/sd/SDCardStatus.h>
#include <io/sd/SDDriver.h>
#include <bitset>

int main()
{
//	constexpr uint64_t SD_BASE = 0xFF160000;//ff160000
	uint64_t sd_bases[]={
//			0xFF160000,
			0xFF170000
	};

	SDDriver sd(sd_bases[0]);
	if(!sd.init())
	{
		kout << FATAL << "init failed\n";
		return 1;
	}

//	 test for single block read & write
	{
		// set buffer = ['AAAAAA.....bbbbb...... end']
		char buffer[512];
		for(size_t i=0;i!=256;++i)
			buffer[i]='A';
		for(size_t i=256;i!=510;++i)
			buffer[i]='b';
		buffer[508]=' ';
		buffer[509]='e';
		buffer[510]='n';
		buffer[511]='d';

		// write it
		size_t wn=sd.writeSingleBlockNoDMA(0, buffer);
		if(wn!=1)
		{
			kout << FATAL << "write block error \n";
			return 1;
		}else{
			// read it into a raw buffer,and print to verify that.
			char buffer2[512];
			size_t nr1=sd.readSingleBlockNoDMA(0, buffer2);
			kout << "read size = " << nr1 << "\n";
			kout << "==================read data is : \n";
			kout.print(buffer2,nr1*512);
			kout << "\n======================\n";
		}
	}

	// test for multiple block read & write
	{
		// set buffer = 0-511:   ['AAAAAA.....bbbbb...... end']
		//              512-1023:['BBBBBB.....ccccc.....  END']
		char buffer[512*2];
		for(size_t i=0;i!=256;++i)
			buffer[i]='A';
		for(size_t i=256;i!=510;++i)
			buffer[i]='b';
		buffer[508]=' ';
		buffer[509]='e';
		buffer[510]='n';
		buffer[511]='d';
		for(size_t i=0;i!=256;++i)
			buffer[512+i]='B';
		for(size_t i=256;i!=510;++i)
			buffer[512+i]='c';
		buffer[512+508]=' ';
		buffer[512+509]='E';
		buffer[512+510]='N';
		buffer[512+511]='D';

		// write it
		size_t wn=sd.writeBlocksNoDMA(0, 2,buffer);
		if(wn!=2)
		{
			kout << FATAL << "write multiple blocks error \n";
			return 1;
		}else{
			// read it into a raw buffer,and print to verify that.
			char buffer2[512*2];
			size_t nr1=sd.readBlocksNoDMA(0, 2, buffer2);
			kout << "read size = " << nr1 << "\n";
			kout << "==================read data is : \n";
			kout.print(buffer2,nr1*512);
			kout << "\n======================\n";
		}

	}
	return 0;
}

