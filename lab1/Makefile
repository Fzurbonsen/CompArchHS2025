SRC = $(wildcard src/*.c)
INPUT ?= $(wildcard inputs/*/*.x)

.PHONY: all verify clean clean_all

all: sim

sim: $(SRC)
	gcc -g -O2 $^ -o $@

basesim: $(SRC)
	gcc -g -O2 $^ -o $@

run: sim
	@python run.py $(INPUT)

clean:
	rm -rf *.o *~ sim

clean_all:
	rm -rf *.o *~ sim basesim

