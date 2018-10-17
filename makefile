SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin

SRCS := $(shell find $(SRC_DIR) -name "*.cpp")
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRCS))
DEPS := $(patsubst %.o,%.d,$(OBJS))

CXX := clang++
CXXFLAGS := -std=c++14 -Wall -Wextra

TARGET := $(BIN_DIR)/app

.PHONY: all debug clean
all: $(TARGET)
debug: CXXFLAGS += -g
debug: all

$(TARGET): $(OBJS)
	@mkdir -pv $(dir $@)
	$(CXX) -o $(TARGET) $^

clean:
	rm -rf $(OBJ_DIR)/*
	rm -f $(TARGET)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -pv $(dir $@)
	$(CXX) $(CXXFLAGS) -MMD -c -o $@ $<

# $(CXX) -MMD option create makefile dependency file with *.d extension
# while compiling. So we can add header file dependencies automatically
# for *.o files that *.cpp include in source code by "include $(DEPS)".
$(shell mkdir -pv $(dir $(DEPS)))
$(shell touch $(DEPS))
include $(DEPS)
$(DEPS): ; # escapes $(DEPS) from dependency check
