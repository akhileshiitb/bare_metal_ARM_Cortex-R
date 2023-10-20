
MEMORY
{
		CODE : ORIGIN = 0x41010000, LENGTH = (1024*8) /* 8KB code*/
		DATA : ORIGIN = (0x41010000 + (1024*8)), LENGTH = (1024*8) /* 8KB data*/
		VECTORS : ORIGIN = 0x0 , LENGTH = 10  /* vectors at address 0*/
		STACK : ORIGIN = (0x41010000 + (16*1024)), LENGTH = (1024*4) /* 4KB for stack general*/
}

SECTIONS
{
		.text :
		{
				*(.text)
		} > CODE

		.data :
		{
				*(.data)
		} > DATA

		.vectors :
		{
				*(.vectors)
		} > VECTORS

		.stack :
		{
				 _stack_bottom = . ;
				. = . + (4*1024); /* 4KB stack*/
				_stack_top = . ; 
		} > STACK
}
