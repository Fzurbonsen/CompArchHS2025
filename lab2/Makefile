SRC = $(wildcard src/*.c)
INPUT ?= $(wildcard inputs/*/*.x)

.PHONY: all verify clean tests

all: sim

sim: $(SRC)
	gcc -g -O2 $^ -o $@

basesim: $(SRC)
	gcc -g -O2 $^ -o $@

run: sim
	@python3 run.py $(INPUT)

tests: sim
	./sim inputs/medium/additest.x

clean:
	rm -rf *.o *~ sim

