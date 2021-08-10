#include "iostream"
#include "fstream"
#include "stdlib.h"
#include "string"

using namespace std;

int main()
{
    fstream file;
    system("netsh wlan show profile > Fox.txt");
    file.open("Fox.txt", ios::in);
    if (!file)
        cout << "No such file" << endl;
    else
    {
        string essid;
        string command;
        while (1)
        {
            file >> essid;
            if (file.eof())
                break;
            //system("netsh wlan show profile (wifi_name) key=clear > Fox_done.txt");
            essid.c_str();
            command += "netsh wlan show profile ";
            command += essid;
            command += " key=clear >> Fox_done.txt";
            system(command.c_str());
            command.clear();
        }
    }
    file.close();
    return 0;
}
