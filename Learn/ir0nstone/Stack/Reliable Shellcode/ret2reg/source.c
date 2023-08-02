// gcc source.c -o vuln-64 -no-pie -fno-stack-protector -z execstack

#include <stdio.h>

void vuln() {
	char buffer[100];
	gets(buffer);
}

int main() {
	vuln();
	return 0;
}
