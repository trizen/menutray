menutray
========

A simple GTK+ application menu tray.

![menutray](https://2.bp.blogspot.com/-Tst48LetC_8/VmucnuuC_lI/AAAAAAAAfag/bCm3TEon5nI/s1600/2015-12-12-060231_1920x1080_scrot.png)

----

### Usage

```
usage: menutray [options]

options:
    -g    : generate a simple menu
    -i    : generate a menu with icons
    -u    : update the configuration file
    -r    : regenerate the configuration file
    -gtk3 : use Gtk3 instead of Gtk2

other:
    -S <file>  : path to the schema.pl file
    -C <file>  : path to the config.pl file
    -o <file>  : path to the menu.pl file

help:
    -h  : print this message and exit
    -v  : print version number and exit

* Menu   : ~/.config/menutray/menu.pl
* Config : ~/.config/menutray/config.pl
* Schema : ~/.config/menutray/schema.pl
```

Installation process: https://github.com/trizen/menutray/blob/master/INSTALL.md
