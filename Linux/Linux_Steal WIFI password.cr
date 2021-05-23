system("ls /etc/NetworkManager/system-connections/ > Fox.txt")
file = File.read("Fox.txt")
puts file