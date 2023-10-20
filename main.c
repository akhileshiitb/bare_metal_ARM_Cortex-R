#include <stdint.h>

uint32_t calculate(uint32_t a, uint32_t b)
{
		return a + b; 
}

int main()
{
		volatile uint32_t sum = 0; 
		volatile uint32_t st = 20; 
		
		sum = calculate(4,5);

		while (st != 0)
		{
		; 
		}
				
		return 0; 
}
