#include "iostream"
#include "fstream"
#include "stdlib.h"
#include "string"
#include "cstring"

using namespace std;

int main()
{
    fstream file;
    //system("netsh wlan show profile > Fox.txt");
    system("ls > Fox.txt");
    file.open("Fox.txt", ios::in);
    if (!file)
        cout << "No such file" << endl;
    else
    {
        string essid;
        while (1)
        {
            file >> essid;
            string command[] = {"echo (" + essid + ") > Fox_done.txt"};
            char *wifi_name = new char[command.length() + 1];
            if (file.eof())
                break;
            //system("netsh wlan show profile (wifi_name) key=clear > Fox_done.txt");
            strcpy(wifi_name, command.c_str());
            system(wifi_name);
        }
    }
    file.close();
    return 0;
}
