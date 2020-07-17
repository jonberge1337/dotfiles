#include <stdio.h>
#include <stdlib.h>
#include <string.h> /* for strncpy */
#include <unistd.h>

#include <arpa/inet.h>
#include <dirent.h>
#include <net/if.h>
#include <netinet/in.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <sys/types.h>
#define ANSI_COLOR_RED "\x1b[31m"
#define ANSI_COLOR_RESET "\x1b[0m"

char* get_interface(const char* directorio);
int interface_status(char* fichero);
int main()
{
	char* interface = get_interface("/sys/class/net");
	int fd;
	struct ifreq ifr;
	char inter_status[140];
	strcpy(inter_status, "/sys/class/net/");
	strcat(inter_status, interface);
	strcat(inter_status, "/operstate");

	if (interface_status(inter_status)) {

		fd = socket(AF_INET, SOCK_DGRAM, 0);

		/* I want to get an IPv4 IP address */
		ifr.ifr_addr.sa_family = AF_INET;

		/* I want IP address attached to "eth0" */
		strncpy(ifr.ifr_name, interface, IFNAMSIZ - 1);

		ioctl(fd, SIOCGIFADDR, &ifr);

		close(fd);

		/* display result */
		printf(
				"%s\n", inet_ntoa(((struct sockaddr_in*)&ifr.ifr_addr)->sin_addr));
	} else {
		printf(ANSI_COLOR_RED "down" ANSI_COLOR_RESET "\n");
	}

	return 0;
}

char* get_interface(const char* directorio)
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
				strncpy(nombre_interface, ep->d_name, 10);
			}
		}
	}
	return nombre_interface;
}

int interface_status(char* fichero)
{
	FILE* archivo = fopen(fichero, "r");
	char buff[10];
	int en_marcha;
	if (archivo) {
		fscanf(archivo, "%s", buff);
	} else {
		puts("Error al abrir el archivo");
		exit(EXIT_FAILURE);
	}

	if (strcmp(buff, "up") == 0) {
		en_marcha = 1;
	} else {
		en_marcha = 0;
	}
	return en_marcha;
}
