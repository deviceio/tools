@ECHO OFF

set cwd=%cd%

set PATH=%GOPATH%\bin;%GOPATH%\src\github.com/deviceio\tools\protoc\windows\bin;%PATH%

set PROTOCBIN="%GOPATH%\src\github.com/deviceio\tools\protoc\windows\bin\protoc.exe"
set PROTODIR="%GOPATH%\src\github.com/deviceio\shared\protocol_v1"

cd %PROTODIR%

%PROTOCBIN% --go_out=plugins=grpc:%PROTODIR% *.proto

cd %cwd%