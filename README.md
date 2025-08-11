### Hi there 👋

<!-- # Happy, free, creative. -->

#### My feature programming languages

<picture><source media="(prefers-color-scheme: dark)" srcset="https://fastweb.lcjuves.com/assets/svg/__Rust.svg"><source media="(prefers-color-scheme: light)" srcset="https://fastweb.lcjuves.com/assets/svg/Rust.svg"><img alt="Rust" src="https://fastweb.lcjuves.com/assets/svg/Rust.svg" width="47" height="47"></picture>&emsp;<img src="https://fastweb.lcjuves.com/assets/svg/ZIG.svg" width="47" height="47" alt="ZIG" />&emsp;<img
    src="https://fastweb.lcjuves.com/assets/svg/Java.svg" width="47" height="47" alt="Java" />&emsp;<img
    src="https://fastweb.lcjuves.com/assets/svg/Dart.svg" width="47" height="47" alt="Dart" />

```rust
/**
 * Created at 2020/8/22 20:40
 *
 * @author Liangcheng Juves
 */
fn main() {
    println!("Hello, World!");
}
```

```rust
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
```

```rust
/**
 * Created at 2020/11/16 22:49
 *
 * @author Liangcheng Juves
 */
use std::io::{stdout, Result, Write};
use std::thread::sleep;
use std::time::{Duration, SystemTime, UNIX_EPOCH};

fn main() -> Result<()> {
    loop {
        print!(
            "\r{}",
            SystemTime::now()
                .duration_since(UNIX_EPOCH)
                .unwrap()
                .as_secs()
        );
        sleep(Duration::from_micros(300));
        stdout().flush()?
    }
}
```

## <img src="https://fastweb.lcjuves.com/assets/svg/rustacean-flat-happy.svg" width="32" height="32" alt="Rustacean Happy"/>&nbsp; [Rustaceans Or Ferris Says](https://github.com/LcJuves/rustaceans)

### At least those who provide the best things to people for free should be respected !!!

### [Click me](https://github.com/MeyouRepo) to discover the joy of life

#### [Dev Fans](https://devfans.lcjuves.com) | [Where](https://where.lcjuves.com) | [My Personal Blog](https://blog.lcjuves.com) | [Open Developer Books](https://odb.lcjuves.com)

<!--
**LcJuves/lcjuves** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
