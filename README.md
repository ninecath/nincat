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
+ Supports **lolcat** arts (if there's more programs like **lolcat**, we can support it, too :)
+ Supports HEX colour foreground/background arts and 256 colours, 88 colours, 16 colours;
+ Skip empty ASCII art files;
+ You can select an art directly (by option);
+ List all ASCII art's paths (by option);
+ Print the name of printed art (by option);
+ We'll always give you more, baby!
+ Use modular list of ASCCI arts with the paths to be faster (by option you can update).
+ Modular folder containing the ASCII arts.
+ Environment variables:
+ + `NINCAT_ARTS_FOLDER`: Folder of the ASCII arts, current is /ascii_arts
+ + `NINCAT_ARTS_LIST` : File that contains ASCII art paths, current: $HOME/.cache/nincat_list

---

## ⚡ Installing

### Arch Linux (Manjaro, Artix, Arco...)

With an AUR helper, you can install it with the package called `nincat-git`.
Example with [paru](https://github.com/Morganamilo/paru):

```zsh
paru -S nincat-git
nincat random
```

### By Github

Click in `Code` in this repository and then `Download ZIP`. Extract it using your favourite tool and then in your terminal: 
```zsh
cd PUT_HERE_THE_PATH_OF_NINCAT
make
nincat random
```

### By Git

From your terminal, you can clone in your preferred folder:
```zsh
git clone 'https://github.com/ninecath/nincat'
cd nincat
make
nincat random
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

Tree of arguments:

+ `--random` or `-r` : print a random ASCII arts that fits in your terminal;
  - `--see` or `-s` : prints the path of the ASCII art that it finds.
+ `--list` or `-l` : print the path of all ASCII arts;
+ `--view` or `-v` : view an ASCII art;
  - `[path_of_file]` : the path of the ASCII art (use **list** in doubt).
+ `--help` or `-h` : help list of commands;
+ `--update` or `-u` : update the file list with all the arts.

----

## 😪 Dependencies:
+ **lolcat** (optional)
  - [Please, use its faster implantation](https://github.com/jaseg/lolcat)
  - So, if you want to, you can disable this dependency by just removing the `ascii_arts/lolcat` folder in the root directory of `nincat`. And if you know a little bit of shell scripting, remove its condition on the script file.

----

<p align="center">
  <img align="center" src="/.github/new_art.png" alt="Preview of one ASCII art with lolcat."/>
</p>

## ✏️  Adding new ASCII arts:

File names are made in this format: `<name-of-art> <rows-size-of-art> <columns-size-of-art>`. **Yes, it does contain spaces, do not forget it, it's important!** They are put in the `/ascii_arts/`. You can make a separate folder to add your own arts.

Things to do while creating a new art:
+ Each line without trailing spaces at the end;
+ Use spaces (DO NOT USE TABS!!!);

Please, do not fill all the lines with spaces to close all columns. A good and simple example should be:
```
# Your wonderful username/name and/or extra information
   (   )
: ) o_o ( :
```

**Please, run the `fix_ascii_arts` script if you want to make sure your file is correctly put!**

Because If you do not want to count the rows and columns of your file, just run the update script called `/fix_ascii_arts` in the root path.
If you added colours on you art, remember that you do not have to put a' reset colour' after it. nincat will do that for you.

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
