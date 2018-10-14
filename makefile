SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin

_SRCS := main.cpp
SRCS := $(patsubst %,$(SRC_DIR)/%,$(_SRCS))
OBJS := $(patsubst %.cpp,$(OBJ_DIR)/%.o,$(_SRCS))
DEPS := $(patsubst %.o,%.d,$(OBJS))

CXX := clang++
CXXFLAGS := -std=c++14 -Wall -Wextra

TARGET := $(BIN_DIR)/app

.PHONY: all rebuild clean
all: $(TARGET)
rebuild: clean all

$(TARGET): $(OBJS)
	@mkdir -p $(BIN_DIR)
	$(CXX) -o $(TARGET) $^

clean: 
	rm -rf $(OBJ_DIR)/*
	rm -f $(TARGET)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(OBJ_DIR)
	$(CXX) -MMD -c -o $@ $< $(CXXFLAGS)

$(shell touch $(DEPS))
include $(DEPS)
$(DEPS): ;
