use std::io;
use std::env;

fn score(input: String) {
    let mut sum = 0;
    let mut tens = 0;
    let mut cnt = 0;
    let mut thingy10 = 0;
    if input.len() != 30 {
        panic!("Incorrect amount of points")
    }
    println!("\n┌──────────────┐");
    for c in input.chars() {
        if c.is_numeric() {
            if cnt == 15 {
                println!(" 10-meter | {} ", sum);
                thingy10 += sum;
            }
            let n = c.to_digit(10).unwrap_or(10);
            sum += n;
            cnt += 1;
        } else {
            if cnt == 15 {
                println!(" 10-meter | {} ", sum);
                thingy10 += sum;
            }
            let n = c.to_digit(10).unwrap_or(10);
            sum += n;
            tens += 1;
            cnt += 1;
        }
    }
    let thingy15 = sum - thingy10;
    println!(
        " 15-meter | {} \n Total    | {}    \n Tens     | {}      \n└──────────────┘",
        thingy15, sum, tens
    );
}

fn main() {
    let args: Vec<String> = env::args().collect();
    match args.len() {
        1 => {
            println!("Enter points in one string, 10 being any non-number:");
            let mut input = String::new();
            io::stdin()
                .read_line(&mut input)
                .expect("Failed to read line");
            input = input.trim().to_string();
            score(input);
        },
        2 => { 
            let args: Vec<String> = env::args().collect();
            let input: &String = &args[1];
            score(input.to_string());
        },
        _ => { println!("Is you dumb?") }
    }
}
