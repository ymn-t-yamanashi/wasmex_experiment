#!/bin/sh
onyx build -r wasi -o test.wasm test.onyx
wasmer run test.wasm