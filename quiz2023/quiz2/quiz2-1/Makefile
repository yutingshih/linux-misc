CC := gcc
CFLAGS := -O0 -g -Wall -Wextra -DD

SRC := main.c
BIN := a.out

all: $(BIN)
	./$(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	-@$(RM) -rv $(BIN)
