### Hi there 👋

<!-- # Happy, free, creative. -->

#### My feature programming languages
<img src="https://camo.githubusercontent.com/36e0b48e09872c783d3c8bc98ad0b761cc770826813ec9fa0d3d0c4d81569f55/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f5f527573742e737667" width="auto" height="47" alt="Rust"/>&emsp;<img src="https://camo.githubusercontent.com/202e69075cd7ee746244cd4545dd1782f408885caa1c128bb15712089587a6c0/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f4b6f746c696e2e737667" width="auto" height="47" alt="Kotlin"/>&emsp;<img src="https://camo.githubusercontent.com/c2c16ad403da9c8d1d9cb03e25fd2313a399a785de3a3fef599d92e5f070a292/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f4a6176612e737667" width="auto" height="47" alt="Java"/>&emsp;<img src="https://camo.githubusercontent.com/ca063a1b95097058c3cc85e76e8fb9462803650a4f7160425826f0b170810ab1/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f547970655363726970742e737667" width="auto" height="47" alt="TypeScript"/>&emsp;<img src="https://camo.githubusercontent.com/5ddf9aaf3a4971c883c61b0b30d62a53b0d652e46ec0f1d7654c97977d7ffde6/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f4a6176615363726970742e737667" width="auto" height="47" alt="JavaScript"/>&emsp;<img src="https://camo.githubusercontent.com/ca4ff71a3575582489c0b35ea107938d452707d5be63e9376579a0287eef2d6d/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f646f744e45542e737667" width="auto" height="47" alt=".NET"/>&emsp;<img src="https://camo.githubusercontent.com/a6d9bbadc6ef237b9eeb4ce3dcb3a860633652b2aedd1fa1eb955eb90c4da55d/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f446172742e737667" width="auto" height="47" alt="Dart"/>&emsp;<img src="https://camo.githubusercontent.com/d2067cc3d807837aafb9362d76e4e766a5957aaddced2bd9a51f7660b32261bd/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f53776966742e737667" width="auto" height="47" alt="Swift"/>&emsp;<img src="https://camo.githubusercontent.com/784b94e95e5815acf334c32e28840b114d5069646f0e53477b64d21f5e3052a7/68747470733a2f2f7765622d66726f6e74656e642e78797a2f6173736574732f7376672f507974686f6e2e737667" width="auto" height="47" alt="Python"/>

``` c
/**
 * Created at 2020/8/22 20:40.
 * 
 * @author Liangcheng Juves
 */
#include <stdio.h>

int main(int argc, char const *argv[])
{
    printf("hello,world\n");
    return 0;
}
```

``` c
/**
 * Created at 2020/9/15 15:14.
 *
 * @author Liangcheng Juves
 */
#include <stdio.h>
#include <unistd.h>

int main(int argc, char const *argv[])
{
    char bar_out[51] = {'\0'};
    char const *bar_lab = "-\\|/";
    int perc = 0;
    while (perc <= 100)
    {
        printf("\r %c \033[42m%s\033[0m [ %d%% ] ",
               bar_lab[perc % 4], bar_out, perc);
        fflush(stdout);
        usleep(60000);
        bar_out[perc / 2] = ' ';
        bar_out[perc / 2 + 1] = '\0';
        perc++;
    }
    printf("\n");
    return 0;
}
```

``` c
/**
 * Created at 2020/11/16 22:49.
 * 
 * @author Liangcheng Juves
 */
#include <stdio.h>
#include <unistd.h>
#include <time.h>

#define forever while (1)

int main(int argc, char const *argv[])
{
    forever
    {
        printf("\r%ld", time(NULL));
        usleep(300);
        fflush(stdout);
    }
    return 0;
}
```

#### [Open Developer Books](https://odb.liangchengj.com)
#### [About Me](https://web-fronted.xyz/assets/pdf/cv.pdf)

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
