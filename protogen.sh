#!/bin/bash

cwd=$(pwd)

PATH="$GOPATH/bin;$GOPATH/src/github.com/deviceio/tools/protoc/linux-x86_64/bin;$PATH;"
PROTOCBIN="$GOPATH/src/github.com/deviceio/tools/protoc/linux-x86_64/bin/protoc"
PROTODIR="$GOPATH/src/github.com/deviceio/shared/protocol_v1"

cd $PROTODIR

$PROTOCBIN --go_out=plugins=grpc:$PROTODIR *.proto

cd $cwd