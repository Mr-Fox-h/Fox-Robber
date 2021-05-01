#include <stdio.h>
#include <string.h>

int main()
{
    char command[50];
    strcpy(command, "netsh wlan show profile > Fox.txt");
    system(command);
    return 0;
}