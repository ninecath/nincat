<p align="center">
  <img src="/.github/preview.png" alt="Preview of one ASCII art in ST.">
</p>

<p align="center"><b>Let's revive the ASCII art!</b></p>

<p align="center">Nincat is community-driven project that loads an ASCII art centred in your terminal.</p>

---

<p align="center">
  <a href="http://asciiartist.com/wp/respect-ascii-artists-campaign/">
    <img src="https://www.asciiart.eu/images/respectasciiartists.gif" alt"Respect ASCII Artists Campaign">
  </a>
  <a href="https://github.com/ninecath/">
    <img src="/.github/logo.png" width="156" alt"ninecath">
  </a>
</p>

## 🌟 Features:
+ Fast as it can be and lightweight;
+ Self adapt with the terminal size to print only ASCII arts that fit;
+ Supports any external program such as lolcat.
+ Supports HEX colour foreground/background arts and 256 colours, 88 colours, 16 colours;
+ Skip empty ASCII art files;
+ You can select an art directly (by option);
+ List all ASCII art's paths (by option);
+ Print the name of printed art (by option);
+ Modular folder containing the ASCII arts.
+ Environment variable:
+ + `NINCAT_ROOT`: Root of nincat's information, where it will store ASCII arts and etc. Default: `~/.cache/nincat/`

---

## ⚡ Installing

### Arch Linux (Manjaro, Artix, Arco...)

With an AUR helper, you can install it with the package called `nincat-git`.
Example with [paru](https://github.com/Morganamilo/paru):

```zsh
paru -S nincat-git
nincat --random --center
```

### By Github

Click in `Code` in this repository and then `Download ZIP`. Extract it using your favourite tool and then in your terminal: 
```zsh
cd PUT_HERE_THE_PATH_OF_NINCAT
make
nincat --random --right
```

### By Git

From your terminal, you can clone in your preferred folder:
```zsh
git clone 'https://github.com/ninecath/nincat'
cd nincat
make
nincat --random
```

### Loading it

Probably you want to put when your Terminal opens, that is, when your shell is loaded. If you don't care a lot about shells, you probably use `bash`, maybe `zsh` with `Oh my zsh`.
Anyway, all you need to do is add this line in your shell **rc** changing the location for `nincat` script, then you'll be able to load it when the terminal opens :)
To verify what shell you use, run `echo $SHELL` in your terminal.

+ For `zsh` the	rc is put in `~/.zshrc`;
+ For `bash` the rc is put in `~/.bashrc`;
+ For `fish` the config is put in `~/.config/fish/config.fish`;
+ etc... search for the documentation of your shell if it isn't listed here.

```zsh
nincat random
```

**TIP**: Faster is better, if you have the `dash` shell installed in your machine, consider using it (it's 4x faster than bash and considered the fastest shell) with the following line:
```zsh
which nincat
dash LOCATION_OF_NINCAT random
```

In **Arch Linux (...based ditros)** you can use `pacman -S dash` to install it.

I'd recommend, too, you putting the line in the top of your shell.

----

## Options

```
nincat help with arguments in a tree list
    --random [-r]            : show a random ASCII art
 			 --raw [-R]            : (optional) show the path of the art and description
 			 --center [-c]         : (optional) center the art
 			 --right [-r]          : (optional) put to the right the art
    --list [-l]              : print the secondpath of all ASCII arts
    --view [-v]              : print an ASCII art based on the secondpath
 			 [path_of_file]        : secondpath of the art to print
          --raw [-R]         : (optional) show the secondpath of the art
 			    --center [-c]      : (optional) center the art
 			    --right [-r]       : (optional) put to the right the art
 		--help [-h]              : shows this
 		--update [-u]            : update the file list with all the arts.
```

----

## 😪 Dependencies:
+ **lolcat** (optional)
  - [Please, use its faster implantation](https://github.com/jaseg/lolcat) for performance.
  - You can disable this dependency by just removing the `/ascii_arts/   _   lolcat` folder in the root directory of `nincat`.
+ **gay** (optional)
  - [source](https://github.com/ms-jpq/gay)
  - You can disable this dependency by just removing the `/ascii_arts/   _   gay` folder in the root directory of `nincat`.

----

<p align="center">
  <img align="center" src="/.github/new_art.png" alt="Preview of one ASCII art with lolcat."/>
</p>

## ✏️  Contributing/Adding ASCII arts:

File names are made in this format: `<name-of-art> <max-rows-size-of-art> <max-columns-size-of-art>`. **Yes, it does contain those last two spaces, do not forget it, it's important!** They are put in the `/ascii_arts/`. You can make a separate folder to add your own arts.

\* If the art was made by another artist, please -- please -- add her/his name to the first line tagging him/her as the original artist, the maintainer (s) cannot verify each art being added and definitely that would show a little bit of kindness that can make a difference in this big universe. Thank you.

Things to do while creating a new art:
+ Use spaces (DO NOT USE TABS!);

Please, do not fill all the lines with spaces to close all columns. A good and simple example should be:
```
# Your wonderful username/name and/or extra information
   (   )
: ) o_o ( :
```

**Note:**

Since it is kinda hard adding colours and effects to it, I actually developed [a tool](ninecath.github.io/) to write easily ASCII arts. Here's its [source code](https://github.com/ninecath/ninecath.github.io/). It still in development, but it is far better than writing on a text editor.

##### Colours

[Give a look at this site for **256, 88, 16 colours** in your ASCII arts](https://misc.flogisoft.com/bash/tip_colors_and_formatting).
And obviously, you should utilize `\033` instead of `\e`.

For **true colours**, [I'd recommend this](https://stackoverflow.com/questions/4842424/list-of-ansi-color-escape-sequences).

### 💞 Please, contribute!

It would be lovely that for every art you add, you add it here, too! Remember to put your name in the first line, so your contribution is never forgotten :)

#### By Github's Pull Request (recommended)

Clone this project, add your art in a file in either manually with **Github** or with **git**, then send a pull request here comparing both branches.

#### By Github's Issue

Create a new issue in the `New art` option and put there your art.

#### Literally email (not recommended, please)

Send an email to `koetemagie@gmail.com` with your art, do not forget to put your name in the first line and email. If you forgot, I will add it for you :)

---

## ❗ Acknowledgements:

You can find alternatives in the web, here are some with their initial commits:

+ [ASCII Art](https://github.com/Tianwei-Li/ascii_art) (2013/02)
+ [ShASCII](https://github.com/oskargicast/shascii) (2014/05)
+ [Art Splash Screen](https://github.com/DanCRichards/ASCII-Art-Splash-Screen) (2017/11)
+ Inspired by [shell-colors-scripts](https://gitlab.com/dwt1/shell-color-scripts/) (2018/02)
+ [TerminalWelcome](https://github.com/devarshi16/TerminalWelcome) (2019/03)
+ [nincat](https://github.com/BeyondMagic/nincat/) (2021/04)
+ [pokemon-colorscripts](https://gitlab.com/phoneybadger/pokemon-colorscripts/) (2021/08)

---

<p align="center">
  <a href="/LICENSE"><b>GPL3 License</b></a>
</p>
