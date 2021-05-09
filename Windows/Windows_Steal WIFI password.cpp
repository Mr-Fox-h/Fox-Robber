#include "iostream"
#include <stdlib.h>

using namespace std;

int main()
{
    FILE *file;
    char item[255];
    //system("netsh wlan show profile > Fox.txt");
    system("ls > Fox.txt");
    file = fopen("Fox.txt", "r");
    for (int i = 0; i < 255; i++)
    {
        fgets(item, 255, file);
        printf("%s", item);
    }
    fclose(file);
    /*
    for (int i = 0; i < 255; i++)
    {
        printf("%s", item);
    }
    */
    return 0;
}