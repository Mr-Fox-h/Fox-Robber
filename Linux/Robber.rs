use std::fs::File;
use std::io::prelude::*;

fn main() {
    println!("{}", steal_wifi_pas());
}

//Steal WIFI Password On Linux
fn steal_wifi_pas() -> String {
    let mut files = File::open("/etc/NetworkManager/system-connections/3boys").expect("Error! No File.\n");
    let mut context: String = String::new();
    files.read_to_string(&mut context).expect("Error! Not readable.\n");
    return context;
}
