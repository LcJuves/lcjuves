/**
 * Created at 2021/12/26 17:20
 *
 * @author Liangcheng Juves
 */
use std::io::{stdout, Result, Write};

fn main() -> Result<()> {
    let ascii_art_bytes = include_bytes!("../banner.txt");
    stdout().write_all(ascii_art_bytes)?;
    stdout().flush()?;
    Ok(())
}
