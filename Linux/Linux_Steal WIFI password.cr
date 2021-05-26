system("ls /etc/NetworkManager/system-connections/ > Fox.txt")
File.each_line("Fox.txt") do |line|
    system("sudo cat /etc/NetworkManager/system-connections/\'#{line}\' >> Fox_done.txt")
end