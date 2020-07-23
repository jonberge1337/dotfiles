#include <stdio.h>
#include <string.h>
#include <dirent.h>
#include <unistd.h>
#include <stdlib.h>

void get_interface(const char* directorio, char *interface);
long lectura(const char* ruta);
int main(int argc, char *argv[])
{
	char base[] = "/sys/class/net/";
	char inter[20];
	get_interface(base, inter);
	char inter_sub[250];
	char inter_des[250];
	sprintf(inter_sub, "%s%s/statistics/tx_bytes", base, inter);
	sprintf(inter_des, "%s%s/statistics/rx_bytes", base, inter);

	long subida_ini = lectura(inter_sub);
	long descar_ini = lectura(inter_des);
	sleep(1);
	long subida_fin = lectura(inter_sub);
	long descar_fin = lectura(inter_des);
	long subida = subida_fin - subida_ini;
	long descarga = descar_fin - descar_ini;
	printf("Received: %ld B/s	Sent: %ld B/s\n", descarga, subida);

	return 0;
}
long lectura(const char* ruta){
	FILE *archivo = fopen(ruta, "r");
	char bytes_s[50];
	char *ptr;
	if (archivo) {
		fgets(bytes_s, 50, archivo);
	}
	long bytes = strtol(bytes_s, &ptr, 10);
	printf("%ld\n", bytes);
	return bytes;
}

void get_interface(const char* directorio, char *interface)
{
	DIR* dp;
	struct dirent* ep;
	char* nombre_interface;
	dp = opendir(directorio);
	if (dp != NULL) {
		while ((ep = readdir(dp)) != NULL) {
			if ((strcmp(ep->d_name, ".") != 0)
					&& (strcmp(ep->d_name, "..") != 0)
					&& (strcmp(ep->d_name, "lo")) != 0) {
				strncpy(interface, ep->d_name, 10);
			}
		}
	}
}
