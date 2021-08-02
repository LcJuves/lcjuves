/**
 * Created at 2020/9/15 15:14
 *
 * @author Liangcheng Juves
 */
use std::io::{stdout, Result, Write};
use std::thread::sleep;
use std::time::Duration;

fn main() -> Result<()> {
    const BAR_LAB: &str = "-\\|/";
    for perc in 0..=100 {
        print!(
            "\r {} \u{1b}[42m{}\u{1b}[0m [ {}% ] ",
            BAR_LAB.chars().nth(perc % 4).unwrap(),
            " ".repeat(perc / 2),
            perc
        );
        stdout().flush()?;
        sleep(Duration::from_micros(60_000));
    }
    println!();
    Ok(())
}
