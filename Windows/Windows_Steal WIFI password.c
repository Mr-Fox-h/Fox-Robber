#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    FILE *file;
    char wifi_name[255], item[255];
    //system("netsh wlan show profile > Fox.txt");
    system("ls > Fox.txt");
    file = fopen("Fox.txt", "r");
    fgets(item, 255, file);
    for (int i = 0; i < 255; i++)
    {
        wifi_name[i] = item[i];
    }
    fclose(file);
    for (int i = 0; i < 255; i++)
    {
        printf("%c", wifi_name[i]);
    }
    return 0;
}