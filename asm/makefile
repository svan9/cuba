FILE_NAME ?= hello

all: build-win run-exe
run-wll: build-win-ll run-exe
run: build-win run-exe

build-win:
	nasm -f win64 $(FILE_NAME).asm -o $(FILE_NAME).o
	ld $(FILE_NAME).o -o $(FILE_NAME).exe -l kernel32 -l msvcrt

build-win-ll:
	nasm -f win64 $(FILE_NAME).asm -o $(FILE_NAME).o
	ld $(FILE_NAME).o -o $(FILE_NAME).exe

run-exe:
	./$(FILE_NAME).exe