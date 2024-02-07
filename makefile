CXX 				:= g++
CXX_FLAGS  	:=
EXECUTABLE 	:= ./bin/cuba.exe

SRC 				:= ./src
HEADERS 		:= ./include

SOURCES 		:= $(wildcard $(SRC)/**/*.c, $(SRC)/**/*.cpp, $(headers)/**/*.h, $(headers)/**/*.hpp)
OBJECTS 		:= $(patsubst $(SRC)/%.cpp, ./bin/obj/%.o, $(SOURCES))


ifeq ($(wildcard ./bin),)
$(shell mkdir "./bin/obj")
endif
ifeq ($(wildcard ./bin/obj),)
$(shell mkdir "./bin/obj")
endif


all: ./$(EXECUTABLE)

run: all
	./$(EXECUTABLE)

./$(EXECUTABLE): $(OBJECTS)
	$(CXX) $^ -o $@ $(LIBRARIES) $(CXX_FLAGS)

./bin/obj/%.o: $(SRC)/%.cpp
	$(CXX) -I$(SRC) -c $< -o $@ $(CXX_FLAGS)
