import os
import shutil

files = os.listdir("/etc/NetworkManager/system-connections/")
os.mkdir("Fox")
num = 1
for line in files:
    shutil.copy2("/etc/NetworkManager/system-connections/"+ line, "Fox/Fox_done-"+ str(num) +".txt")
    num += 1