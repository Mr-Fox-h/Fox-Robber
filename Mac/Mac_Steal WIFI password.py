import os

os.system("ls /etc/NetworkManager/system-connections/ > Fox.txt")
file = open("Fox.txt", "r")
essid = file.read()
terminal = "sudo cat /etc/NetworkManager/system-connections/" + essid
password = os.system(terminal)
line = open("Fox_done.txt", "a")
line.write(password)
line.close()