CC := gcc
CFLAGS := -g -O0 -std=c99 -Wall -Wextra

BIN := add
SRC := add.c

all: $(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	-@$(RM) -rv $(BIN)

