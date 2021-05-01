#include <stdio.h>
#include <string.h>

int main()
{
    int item;
    FILE *file;
    char wifi_name[255];
    char command[50];
    strcpy(command, "netsh wlan show profile > Fox.txt");
    system(command);
    file = fopen("Fox.txt", "r");
    if (file)
    {
        while ((item = getc(file)) != EOF)
            strcpy(wifi_name, putchar(item));
        fclose(file);
    }
    return 0;
}