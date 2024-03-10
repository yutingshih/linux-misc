SRC := lfq.c test.c

CC := gcc
CFLAGS = -std=gnu99 -O3 -Wall -Wextra
LDLIBS := -pthread

all: test1
	./test_p1c1

test1: test_p1c1
test_p1c1: CFLAGS += -D MAX_PRODUCER=1 -D MAX_CONSUMER=1
test_p1c1: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)
	./$@

test2: test_p4c4
test_p4c4: CFLAGS += -D MAX_PRODUCER=4 -D MAX_CONSUMER=4
test_p4c4: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)
	./$@

test3: test_p100c10
test_p100c10: CFLAGS += -D MAX_PRODUCER=100 -D MAX_CONSUMER=10
test_p100c10: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)
	./$@

test4: test_p10c100
test_p10c100: CFLAGS += -D MAX_PRODUCER=10 -D MAX_CONSUMER=100
test_p10c100: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)
	./$@

clean:
	$(RM) -rv test_p*c*
