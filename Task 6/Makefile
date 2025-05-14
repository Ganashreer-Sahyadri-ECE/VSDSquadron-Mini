TOP=top
SRC=$(wildcard src/*.v)
PCF=constraints/$(TOP).pcf
JSON=build/$(TOP).json
ASC=build/$(TOP).asc
BIN=build/$(TOP).bin

all: $(BIN)

build/$(TOP).json: $(SRC)
	mkdir -p build
	yosys -p "synth_ice40 -top $(TOP) -json $@" $^

build/$(TOP).asc: $(JSON)
	nextpnr-ice40 --hx1k --package vq100 --pcf $(PCF) --json $< --asc $@

build/$(TOP).bin: $(ASC)
	icepack $< $@

prog: $(BIN)
	iceprog $<

clean:
	rm -rf build
