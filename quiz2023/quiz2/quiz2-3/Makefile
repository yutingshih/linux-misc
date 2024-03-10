CC := gcc
CFLAGS := -O0 -g -Wall -Wextra -DB

SRC := main.c
BIN := a.out

all: $(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	-@$(RM) -rv $(BIN)
