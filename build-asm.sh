SUBARCH=rv64g
MACH=spike

BUILD_DIR=./build-asm
BIN_DIR=$BUILD_DIR/bin
SRC_DIR=./examples/asm

mkdir -p $BUILD_DIR
mkdir  $BIN_DIR

GCC_FLAGS="-march=$SUBARCH -mabi=lp64 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles"

riscv64-unknown-elf-gcc $GCC_FLAGS -T./env/$MACH/default.lds $SRC_DIR/hello.s -o $BIN_DIR/hello
riscv64-unknown-elf-objdump -h $BIN_DIR/hello
