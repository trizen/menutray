#!/usr/bin/perl

# menutray - schema file

=for comment

    item:       add an item inside the menu               {item => ['command', 'label', 'icon']},
    cat:        add a category inside the menu             {cat => ['name', 'label", 'icon']},
    sep:        horizontal line separator                  {sep => undef}
    raw:        any valid Perl code                        {raw => q(...)},
    tree:       custom category with items                {tree => [[{...}], 'label', 'icon']},
    begin_cat:  begin of a category                  {begin_cat => ['$var', 'name', 'icon']},
    end_cat:    end of a category                      {end_cat => '$var'},
    menutray:   generic menu settings                 {menutray => ['label', 'icon']},
    regenerate: regenerate menu                     {regenerate => ['label', 'icon']},
    exit:       quit menu                                 {exit => ['label', 'icon']},

----------------------------------------------------------------------------------------------------
--------------------------------------------- EXAMPLES ---------------------------------------------
----------------------------------------------------------------------------------------------------

============
'raw' entry:
============

    {raw => <<'CODE'},
{

    # Create the main menu entry
    my $entry = 'Gtk2::ImageMenuItem'->new('My menu');

    # Set icon
    $entry->set_image('Gtk2::Image'->new_from_icon_name('applications-system','menu'));

    # Create the submenu
    my $submenu = Gtk2::Menu->new;

    # Create a new menu item
    my $item = Gtk2::ImageMenuItem->new('Terminal');

    # Set icon
    $item->set_image('Gtk2::Image'->new_from_icon_name('terminal','menu'));

    # Set a signal (activates on click)
    $item->signal_connect('activate',sub {system 'xterm &'});

    # Append the item to the submenu
    $submenu->append($item);

    # Set the submenu to the entry item
    $entry->set_submenu($submenu);

    # Append the entry to the main menu
    $menu->append($entry);
}
CODE

=============
'tree' entry:
=============

    {
     tree => [
            [
             {
                Name => "Item name",
                Exec => "command",
                Icon => "icon-name",
             },
             #{
                # ...
             #},
            ],

            'My category', 'icon-name'
        ]
    },

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/menutray/config.pl";

our $SCHEMA = [
    #          COMMAND             LABEL                ICON
    {item => ['pcmanfm',       'File Manager',      'file-manager']},
    {item => ['xterm',         'Terminal',          'terminal']},
    {item => ['google-chrome', 'Web Browser',       'web-browser']},
    {item => ['gmrun',         'Run command',       'system-run']},
    {item => ['pidgin',        'Instant messaging', 'system-users']},

    {sep => undef},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    {menutray   => ['Menutray', 'preferences-desktop']},

    {sep        => undef},
    {regenerate => ['Regenerate', 'gtk-refresh']},
    {exit       => ['Exit', 'exit']},
]
