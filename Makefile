scripts := $(patsubst %.grc,%.py,$(wildcard *.grc))

.PHONY: all clean

all: $(scripts)

clean:
	rm -f $(scripts)

%.py: %.grc
	grcc $<
	chmod +x $@
