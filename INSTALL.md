## Installation of menutray

* Required dependencies:

    - perl>=5.14.0
    - perl-gtk3 ([Gtk3](https://metacpan.org/pod/Gtk3))
    - perl-data-dump ([Data::Dump](https://metacpan.org/pod/Data::Dump))
    - perl-linux-desktopfiles>=0.25 ([Linux::DesktopFiles](https://metacpan.org/pod/Linux::DesktopFiles))

* Optional dependencies:
    - perl-file-desktopentry ([File::DesktopEntry](https://metacpan.org/pod/File::DesktopEntry))

### Installation process:

- place the `menutray` file inside your PATH
- place the `schema.pl` file inside `/etc/xdg/menutray/` or `~/.config/menutray/`

### Running:

- to generate a new menu with icons, execute: `menutray -i`
- to generate a simple menu, without icons, execute: `menutray -g`
- to load an already generated menu, run `menutray` without any arguments.

### Locale support:

- If [File::DesktopEntry](https://metacpan.org/pod/File::DesktopEntry) is installed, `menutray` will use it to provide locale support.

### Customizing:

- the `schema.pl` file provides a direct customization access for the menu that will be generated.
- adding or removing a given entry from the `schema.pl` file is reflected inside the generated menu.

### Packages:

- Arch Linux: https://aur.archlinux.org/packages/menutray/
