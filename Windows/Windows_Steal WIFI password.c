#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int item;
    FILE *file;
    char wifi_name[255];
    char command[50];
    strcpy(command, "ls > Fox.txt");
    system(command);
    file = fopen("Fox.txt", "r");
    if (file)
    {
        while ((item = getc(file)) != EOF)
            strcpy(wifi_name, item);
        fclose(file);
    }
    for (size_t i = 0; i < sizeof(wifi_name) / sizeof(wifi_name[0]); i++)
    {
        system(wifi_name);
    }

    return 0;
}