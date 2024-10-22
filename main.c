#include <avr/io.h>
#include <util/delay.h>

void main () {
	DDRB |= (1 << 5); // PB5 as output

	while (1) {
		PORTB ^= (1 << 5); // Toggle PB5 with XOR
		_delay_ms(250);
	}
}
