## Installation of menutray

* Required dependencies:

    - perl>=5.14.0
    - gtk2-perl (Gtk2)
    - perl-data-dump (Data::Dump)
    - perl-linux-desktopfiles>=0.08 (Linux::DesktopFiles)

* Optional dependencies:
    - perl-gtk3 (Gtk3)


### Installation process:

- place the `menutray` file inside your PATH
- place the `schema.pl` file inside `/etc/xdg/menutray/` or `~/.config/menutray/`

### Running:

- to generate a new menu with icons, execute: `menutray -i`
- to generate a simple menu, without icons, execute: `menutray -g`
- for creating a Gtk3 menu, simply append `-gtk3` to one of the above commands.
- to load an already generated menu, run `menutray` without any arguments.


### Customizing:

- the `schema.pl` file provides a direct customization access for the menu that will be generated.
- adding or removing a given entry from the `schema.pl` file is reflected inside the generated menu.

### Packages:

- Arch Linux: https://aur.archlinux.org/packages/menutray/
