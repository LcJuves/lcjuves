### Hi there 👋

<!-- # Happy, free, creative. -->

#### My feature programming languages

<img src="https://camo.githubusercontent.com/36e0b48e09872c783d3c8bc98ad0b761cc770826813ec9fa0d3d0c4d81569f55/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f5f527573742e737667" width="47" height="47" alt="Rust"/>&emsp;<img src="https://camo.githubusercontent.com/769185bc3cd08a26a029a0d81b405933b57bb19a500da42a441c94e6ca3f6e68/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f5a49472e737667" width="47" height="47" alt="ZIG"/>&emsp;<img src="https://camo.githubusercontent.com/c2c16ad403da9c8d1d9cb03e25fd2313a399a785de3a3fef599d92e5f070a292/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f4a6176612e737667" width="47" height="47" alt="Java"/>&emsp;<img src="https://camo.githubusercontent.com/a6d9bbadc6ef237b9eeb4ce3dcb3a860633652b2aedd1fa1eb955eb90c4da55d/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f446172742e737667" width="47" height="47" alt="Dart"/>

```rust
/**
 * Created at 2020/8/22 20:40
 *
 * @author Liangcheng Juves
 */
fn main() {
    print!("hello,world\n");
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

#### [My Personal Blog](https://blog.lcjuves.com)
#### [Open Developer Books](https://odb.lcjuves.com)

<!--
**LiangchengJ/liangchengj** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

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
