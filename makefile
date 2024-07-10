ifeq ($(wildcard ./bin),)
$(shell mkdir "./bin")
endif
ifeq ($(wildcard ./bin/obj),)
$(shell mkdir "./bin/obj")
endif

EXE 				:= ./bin/cuba.exe
SOURCES    	:= $(wildcard ./src/**/*.cpp ./src/*.cpp)
OBJECTS    	:= $(patsubst ./src/%.cpp, ./bin/obj/%.o, $(SOURCES))

all: clean libs ./$(EXE)

dev: ./$(EXE)

run: all
	./$(EXE)

# windres "./bin/cuba.rc" -O coff -o ./bin/cuba.res
$(EXE): $(OBJECTS)
	g++ $^ -o $@

$(OBJECTS): $(SOURCES)
	g++ -I./include -I./src -L./lib -ljcb -c $^ -o $@

libs:
	make -Cjcb build-lib -b
	cp ./jcb/bin/jcb.a ./lib

clean:
	rm -rf ./bin

commit: commit-jcb commit-cuba

commit-cuba:
	powershell -File "E:/so2u/GITHUB/cuba/cuba/commit.ps1"

commit-jcb:
	cd ./jcb
	powershell -File "E:/so2u/GITHUB/cuba/cuba/commit.ps1"
	cd ..

-include $(OBJECTS:.o=.d)