#include <stdio.h>
#include "hello.c"
#include "pidgin-2.11.0/libpurple/core.c"

void main(void) {
	hello();
	purple_core_get_version();
	return;
}
