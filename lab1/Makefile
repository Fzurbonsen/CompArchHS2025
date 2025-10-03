SRC = $(wildcard src/*.c)
INPUT ?= $(wildcard inputs/*/*.x)
TEST_INPUT = $(shell pwd)/inputs/long/primes.x

.PHONY: all verify clean clean_all run run_local tests

all: sim

sim: $(SRC)
	gcc -g -O2 $^ -o $@

basesim: $(SRC)
	gcc -g -O2 $^ -o $@

run: sim
	@python run.py $(INPUT)s

run_local: sim
	@python3 run.py $(INPUT)

tests: sim
	@python3 run.py $(TEST_INPUT)

clean:
	rm -rf *.o *~ sim

clean_all:
	rm -rf *.o *~ sim basesim

