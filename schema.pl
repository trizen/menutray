#!/usr/bin/perl

# menutray - schema file

=for comment

    item:       add an item inside the menu               {item => ['command', 'label', 'icon']},
    cat:        add a category inside the menu             {cat => ['name', 'label', 'icon']},
    sep:        horizontal line separator                  {sep => undef},
    beg:        beginning of a submenu                     {beg => ['name', 'icon']},
    end:        end of a submenu                           {end => undef},
    menutray:   generic menu settings                 {menutray => ['label', 'icon']},
    regenerate: regenerate menu                     {regenerate => ['label', 'icon']},
    exit:       quit menu                                 {exit => ['label', 'icon']},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

our $SCHEMA = [
    #          COMMAND                 LABEL                   ICON
    {item => ['xdg-open .',        'File Manager',      'system-file-manager']},
    {item => ['xterm',             'Terminal',          'utilities-terminal']},
    {item => ['xdg-open http://',  'Web Browser',       'web-browser']},
    {item => ['gmrun',             'Run command',       'system-run']},

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

    #              LABEL          ICON
    #{beg => ['My submenu',  'submenu-icon']},
              #...some items here...#
    #{end => undef},

    {menutray   => ['Menutray', 'preferences-desktop']},

    {sep        => undef},
    {regenerate => ['Regenerate', 'gtk-refresh']},
    {exit       => ['Exit', 'application-exit']},
];
