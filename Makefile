CC=avr-gcc
OBJCOPY=avr-objcopy

CCFLAGS=-mmcu=atmega328p -DF_CPU=16000000UL -O2

SRCS=main.c
TARGET=blink

$(TARGET).hex: $(TARGET).elf
	$(OBJCOPY) -O ihex $^ $@

$(TARGET).elf: $(SRCS)
	$(CC) -o $@ $(CCFLAGS) $^

.PHONY: clean
clean:
	rm -f $(TARGET)*
