
ASSETS_DIR := assets
ODGS := $(wildcard odgs/*.odg)
ODGS_PNG = $(patsubst odgs/%.odg, $(ASSETS_DIR)/%.png, $(ODGS))

NEEDED: $(ODGS_PNG)

all: $(NEEDED)

$(ASSETS_DIR)/%.png: odgs/%.odg
	soffice --headless --convert-to png $< --outdir $(ASSETS_DIR)

clean:
	rm -f $(NEEDED)

.PHONY: all clean



