#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

struct memoria {
	long total;
	long libre;
	long buffer;
	long cache;
	long slab;
};

int main(int argc, char* argv[])
{
	FILE* fp;
	char* line = NULL;
	size_t len = 0;
	ssize_t read;
	struct memoria m1;

	fp = fopen("/proc/meminfo", "r");
	if (fp == NULL) {
		puts("Cant open");
		exit(1);
	}

	while ((read = getline(&line, &len, fp)) != -1) {
		const char delimiters[] = " ";
		/* Nos da la primera parte del "split" */
		char* token = strtok(line, delimiters);
		char* ptr;
		/* strcmp compara los strings */
		/* strtol pasa a enteros los strings */
		if (strcmp("MemTotal:", token) == 0) {
			token = strtok(NULL, delimiters);
			m1.total = strtol(token, &ptr, 10);
		} else if (strcmp("MemFree:", token) == 0) {
			token = strtok(NULL, delimiters);
			m1.libre = strtol(token, &ptr, 10);
		} else if (strcmp("Buffers:", token) == 0) {
			token = strtok(NULL, delimiters);
			m1.buffer = strtol(token, &ptr, 10);
		} else if (strcmp("Cached:", token) == 0) {
			token = strtok(NULL, delimiters);
			m1.cache = strtol(token, &ptr, 10);
		} else if (strcmp("Slab:", token) == 0) {
			token = strtok(NULL, delimiters);
			m1.slab = strtol(token, &ptr, 10);
		}
	}

	int memoria_uso = m1.total - m1.libre - m1.buffer - m1.cache - m1.slab;
	float memoria_uso_gb = (float)memoria_uso / 1024 / 1024;
	printf("%1.2fG\n", memoria_uso_gb);

	fclose(fp);
	if (line) {
		free(line);
	}

	return 0;
}
