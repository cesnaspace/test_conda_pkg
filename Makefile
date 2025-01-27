CC=g++
OBJ = main.o
SRC = src
BUILD_DIR = build

main: $(BUILD_DIR)/$(OBJ) | $(BUILD_DIR)
	$(CC) -o $@ $^

$(BUILD_DIR)/%.o: $(SRC)/%.cpp | $(BUILD_DIR)
	$(CC) -c -o $@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

.PHONY: clean

clean:
	rm -rf $(BUILD_DIR) main *~ core *~ 
