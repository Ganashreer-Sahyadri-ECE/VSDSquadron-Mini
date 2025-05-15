TOP = led_blink
SRC = led_blink.v
PCF = led_blink.pcf
BIN = $(TOP).bin
DEVICE = hx1k
PACKAGE = tq144
YOSYS = yosys
NEXTPNR = nextpnr-ice40
ICEPACK = icepack
PROG = iceprog

$(BIN): $(SRC) $(PCF)
	@echo "🔧 Running Yosys synthesis..."
	$(YOSYS) -p "synth_ice40 -top $(TOP) -json $(TOP).json" $(SRC)
	@echo "📐 Running NextPNR place and route..."
	$(NEXTPNR) --$(DEVICE) --package $(PACKAGE) --pcf $(PCF) --json $(TOP).json --asc $(TOP).asc
	@echo "📦 Packing bitstream..."
	$(ICEPACK) $(TOP).asc $(BIN)

flash: $(BIN)
	@echo "⚡ Flashing to FPGA..."
	$(PROG) $(BIN)

clean:
	rm -f *.json *.asc *.bin

.PHONY: clean flash
