#include "iostream"
#include "fstream"
#include "stdlib.h"
#include "string"

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
            if (file.eof())
                break;
            //system("netsh wlan show profile (wifi_name) key=clear > Fox_done.txt");
            system("echo \'(essid)\' > Fox_done.txt");
        }
    }
    file.close();
    return 0;
}