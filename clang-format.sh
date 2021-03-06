#!/bin/bash
BIN=~/llvm-src/llvm/build/bin/clang-format
"$BIN" --style=file -i `find include/ -name *.?pp`
"$BIN" --style=file -i `find test/include -name *.?pp`
"$BIN" --style=file -i `find test -name *.cpp`
"$BIN" --style=file -i `find bench/include -name *.?pp`
"$BIN" --style=file -i `find bench -maxdepth 1 -name *.cpp`
