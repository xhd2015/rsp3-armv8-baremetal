
# 术语和概念


# SD卡存储标准和SD IO的区别
SDIO技术手册在"SDIO Card Specification"中定义。
SDIO技术手册定义了一个存储体，包含多个IO单元和一个SD Host。

SDIO标准与SD存储卡标准兼容。

SDIO卡插入到一个不支持SDIO卡的设备中，SDIO卡不会被破坏。

# Command，命令
命令的长度是48位，由开始位，方向位（1），内容，CRC7，结束位组成。

# Response，回复
响应符号的长度要么是48位，要么是136位。
R1,R3,R6都是48位的，R6是136位。
同样包含开始位，方向位（0），内容，CRC，结束位。
回复符号的格式

# SPI模式和SD模式

5 SPI Protocol
5.1 SPI Bus Protocol
Although the SanDisk SD Card channel is based on command and data bit-streams initiated by a start bit and terminated by a stop bit, the SPI channel is byte-oriented. Every command or data block is built of eight-bit bytes and byte aligned (multiples of eight clocks) to the CS signal.
Similar to the SD Bus protocol, the SPI messages are built from command, response and data-block tokens. The host (master) controls all communication between host and cards.
The host starts every bus transaction by asserting the CS signal, low.
The response behavior in SPI Bus mode differs from the SD Bus mode in the following three ways:
1. The selected card always responds to the command.
2. An 8- or 16-bit response structure is used.
3. When the card encounters a data retrieval problem, it will respond with an error response (which replaces the expected data block) rather than time-out as in the SD Bus mode.

# SD卡读写的基本步骤

