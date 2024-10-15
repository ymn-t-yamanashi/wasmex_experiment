#!/bin/sh
#onyx build -r wasi -o test.wasm test.onyx
#onyx build -o test.wasm -r js test.onyx
#wasmer run test.wasm
onyx build  -o add.wasm -r js add.onyx