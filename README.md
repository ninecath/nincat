<p align="center">
  <img src="/.github/preview.png" alt="Preview of one ASCII art in ST.">
</p>

<p align="center"><b>Let's revive the ASCII art!</b></p>

<p align="center">This a simple script that loads an ASCII art centered in your terminal.</p>

---

## FEATURES:
+ Fast and lightweight;
+ A single run for almost every command, except `printf` and `grep` **Щ(◣д◢)Щ**;
+ Self adapt with the terminal size to print only ASCII arts that fit;
+ Supports **lolcat** arts (if there's more programs like **lolcat**, we can support it, too :)
+ Skip empty ASCII art files;
+ We'll always give you more, baby!

---

## DEPENDENCIES:
+ **lolcat** (optional)
  - [Please, use its faster implentation](https://github.com/jaseg/lolcat)
  - So, if you want to, you can disable this dependency by just removing the 'lolcat' folder in `ascii_arts` in the root. And if you know a little bit of shell scripting, remove its condition on the script file.

---

<p align="center">
  <img align="center" src="/.github/new_art.png" alt="Preview of one ASCII art with lolcat."/>
</p>

## ADDING NEW ASCII ARTS:

Filenames are made in this format: `<name-of-art> <rows-size-of-art> <columns-size-of-art>`. **Yes, it does contain spaces, do not forget it, it's important!** They are put in the `/ascii_arts/`. You can make a separate folder to add your own arts.

Please, do not fill all the lines with spaces to close all columns. A good and simple example should be:
```
   (   )
: ) o_o ( :
```

**Please, run the "update_ascii_arts" script if you want to make sure your file is correctly put!**

Because If you do not want to count the rows and columns of your file, just run the update script called `/update_ascii_arts` in the root path.
If you added colours on you art, remember that you do not have to put a' reset colour' after it. nincat will do that for you.

[Give a look at this site for colours in your ASCII arts](https://misc.flogisoft.com/bash/tip_colors_and_formatting).
And obviously, I ask you to utilize `\033` instead of `\e` as the site shows!.

---

## NOTE:

This is heavily inspired by [**shell-colors-scripts**](https://gitlab.com/dwt1/shell-color-scripts/-/tree/master) (project made by DT. [His video about **shell-colors-scripts**](https://www.youtube.com/watch?v=8Z1OKN6TgxI).

So I created this for a faster and easier way to contribute with ASCII arts.

---

<a align="center" href="/LICENSE"><b>GPL3 License</b></a>

