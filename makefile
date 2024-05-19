define uniq =
  $(eval seen :=)
  $(foreach _,$1,$(if $(filter $_,${seen}),,$(eval seen += $_)))
  ${seen}
endef

CXX 				:= g++
CXX_ARGS		:= # -Wall -pedantic -Wreturn-local-addr
EXECUTABLE 	:= bin/cuba.exe

SRC 				:= ./src
INCLUDE 		:= ./include

# HEADERS 		:= $(wildcard $(INCLUDE)/*.h, $(INCLUDE)/**/*.h)
SOURCES     := $(wildcard $(SRC)/**/*.cpp $(SRC)/*.cpp) 
OBJECTS     := $(patsubst $(SRC)/%.cpp, ./bin/obj/%.o, $(SOURCES)) 
OBJDIRS 		:= $(call uniq, $(dir $(patsubst %.o, %, $(OBJECTS))))

# $(patsubst $(INCLUDE)/%.h, ./bin/obj/%.o, $(HEADERS)) 

# -include $(OBJECTS:.o=.d)

ifeq ($(wildcard ./bin),)
$(shell mkdir "./bin")
endif
ifeq ($(wildcard ./bin/obj),)
$(shell mkdir "./bin/obj")
endif

all: $(OBJDIRS) $(EXECUTABLE)

$(OBJDIRS):
	mkdir -p $@

run: all
	./$(EXECUTABLE)

test: all
	./$(EXECUTABLE) ./tests/cb/test1.cb
# "E:\sosou\GITHUB\cuba\tests\test.cbo"

$(EXECUTABLE): $(OBJECTS)
	windres "./bin/cuba.rc" -O coff -o ./bin/cuba.res
	$(CXX) -I$(INCLUDE) $^ -o $@ ./bin/cuba.res $(CXX_ARGS)

./bin/obj/%.o: $(SRC)/%.cpp
	$(CXX) -I$(INCLUDE) -I$(SRC) -c $< -o $@ $(CXX_ARGS)

clean:
	$(shell "rmdir /s /q bin")
# rmdir "./bin/obj/*.o"
