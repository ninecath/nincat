<p align="center">
  <img src="/.github/preview.png" alt="Preview of one ASCII art in ST.">
</p>

<p align="center"><b>Let's revive the ASCII art!</b></p>

<p align="center">This a simple script that loads an ASCII art centered in your terminal.</p>

---

## 🌟 Features:
+ Fast and lightweight;
+ A single run for almost every command, except `printf` and `grep` **Щ(◣д◢)Щ**;
+ Self adapt with the terminal size to print only ASCII arts that fit;
+ Supports **lolcat** arts (if there's more programs like **lolcat**, we can support it, too :)
+ Skip empty ASCII art files;
+ We'll always give you more, baby!

---

## ⚡ Installing

#### By Github

Click in `Code` in this repository and then `Download ZIP`. Extract it using your favourite tool and then in your terminal: 
```zsh
cd PUT_HERE_THE_PATH_OF_NINCAT
./nincat
```

#### By Git

From your terminal, you can clone in your preferred folder:
```zsh
git clone 'https://github.com/BeyondMagic/nincat.git'
cd nincat
./nincat
```

### Loading it

Probably you want to put when your Terminal opens, that is, when your shell is loaded. If you don't care a lot about shells, you probably use `bash`, maybe `zsh` with `Oh my zsh`.
Anyway, all you need to do is add this line in your shell **rc** changing the location for `nincat` folder, then you'll be able to load it when the terminal opens :)
To verify what shell you use, run `echo $SHELL` in your terminal.

+ For `zsh` the rc is put in `~/.zshrc`;
+ For `bash` the rc is put in `~/.bashrc`;
+ For `fish` the config is put in `~/.config/fish/config.fish`;
+ etc... search for the documentation of your shell if it isn't listed here.

```zsh
LOCATION_OF_NINCAT/nincat
```

**TIP**: Faster is better, if have the `dash` shell installed in your machine, consider using it (it's 4x faster than bash and considered the fastest shell) with the following line:
```zsh
dash LOCATION_OF_NINCAT/nincat
```

In **Arch Linux (...based ditros)** you can use `pacman -S dash` to install it.

I'd recommend, too, you putting the line in the top of your shell.

<!-- ### Arch Linux (...based distros)

With an AUR helper, you can install it with the package called `nincat-git`.
E.j. with yay:

```zsh
yay -s nincat-git
```
-->

<!-- ## Updating:

...

-->

---

## 😪 Dependencies:
+ **lolcat** (optional)
  - [Please, use its faster implentation](https://github.com/jaseg/lolcat)
  - So, if you want to, you can disable this dependency by just removing the `lolcat` folder in `ascii_arts` in the root. And if you know a little bit of shell scripting, remove its condition on the script file.

---

<p align="center">
  <img align="center" src="/.github/new_art.png" alt="Preview of one ASCII art with lolcat."/>
</p>

## ✏️  Adding new ASCII arts:

Filenames are made in this format: `<name-of-art> <rows-size-of-art> <columns-size-of-art>`. **Yes, it does contain spaces, do not forget it, it's important!** They are put in the `/ascii_arts/`. You can make a separate folder to add your own arts.

Please, do not fill all the lines with spaces to close all columns. A good and simple example should be:
```
# Your wonderful username/name and/or extra information
   (   )
: ) o_o ( :
```

**Please, run the "update_ascii_arts" script if you want to make sure your file is correctly put!**

Because If you do not want to count the rows and columns of your file, just run the update script called `/update_ascii_arts` in the root path.
If you added colours on you art, remember that you do not have to put a' reset colour' after it. nincat will do that for you.

[Give a look at this site for colours in your ASCII arts](https://misc.flogisoft.com/bash/tip_colors_and_formatting).
And obviously, I ask you to utilize `\033` instead of `\e` as the site shows!.

### 💞 Please, contribute!

It would be lovely that for every art you add, you add it here, too! Remember to put your name in the first line, so your contribution is never forgetten :)

#### By Github's Issue

Create a new issue in the `New art` option and put there your art.

#### By Github's Pull Request

Clone this project, add your art in a file in either manually with **Github** or with **git**, then send a pull request here comparing both branches.

#### Literally email

Send an email to `koetemagie@gmail.com` with your art, do not forget to put your name in the first line and email. If you forgot, I will add it for you :)

---

## ❗ Note:

This is heavily inspired by [**shell-colors-scripts**](https://gitlab.com/dwt1/shell-color-scripts/-/tree/master) (project made by DT. [His video about **shell-colors-scripts**](https://www.youtube.com/watch?v=8Z1OKN6TgxI).

So I created this for a faster and easier way to contribute with ASCII arts.

---

<p align="center">
  <a href="/LICENSE"><b>GPL3 License</b></a>
</p>

