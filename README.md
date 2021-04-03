### Hi there 👋

<!-- # Happy, free, creative. -->

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
        printf("\r %c \033[42m%s\033[0m [ %d%% ] ", bar_lab[perc % 4], bar_out, perc);
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
        usleep(600);
        fflush(stdout);
    }
    return 0;
}
```

#### [Open Developer Books](https://odb.liangchengj.com)
#### [About Me](https://web-fronted.xyz/assets/pdf/cv.pdf)

<!--
**liangchengj/liangchengj** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

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
