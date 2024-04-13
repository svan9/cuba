CXX 				:= g++
CXX_ARGS		:= # -Wall -pedantic # -Wreturn-local-addr
EXECUTABLE 	:= ./bin/cuba.exe

SRC 				:= ./src
INCLUDE 		:= ./include

SOURCES    := $(wildcard $(SRC)/**/*.cpp $(SRC)/*.cpp) $(wildcard $(INCLUDE)/*.h, $(INCLUDE)/**/*.h)
OBJECTS    := $(patsubst $(SRC)/%.cpp, ./bin/obj/%.o, $(SOURCES))

ifeq ($(wildcard ./bin),)
$(shell mkdir "./bin")
endif
ifeq ($(wildcard ./bin/obj),)
$(shell mkdir "./bin/obj")
endif

all: ./$(EXECUTABLE)

run: all
	./$(EXECUTABLE)

test: all
	./$(EXECUTABLE) ./tests/test.cbo 
# "E:\sosou\GITHUB\cuba\tests\test.cbo"

./$(EXECUTABLE): $(OBJECTS)
	$(CXX) -I$(INCLUDE) $^ -o $@ $(CXX_ARGS)

./bin/obj/%.o: $(SRC)/%.cpp
	$(CXX) -I$(INCLUDE) -I$(SRC) -c $< -o $@ $(CXX_ARGS)

clean:
	$(shell "rmdir /s /q bin")
# rmdir "./bin/obj/*.o"

-include $(OBJECTS:.o=.d)