#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    char wifi_name[255], item[255];
    system("netsh wlan show profile > Fox.txt");
    FILE *file = fopen("Fox.txt", "r");
    fgets(item, 255, file);
    strcpy(wifi_name, item);
    fclose(file);
    printf("%s", wifi_name);
    return 0;
}