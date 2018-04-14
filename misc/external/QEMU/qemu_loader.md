-device loader,OPTIONS
OPTIONS:
loader.force-raw=bool
loader.data-len=uint8
loader.data-be=bool
loader.file=str
loader.addr=uint64
loader.data=uint64
loader.cpu-num=uint32

data-len配合data使用，data指定一个数据，data-len指定数据的宽度


qemu的loader文档在：QEMU/docs/generic-loader.txt中