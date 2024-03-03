# GeanyLua Scripts

This repository contains some [GeanyLua](https://plugins.geany.org/geanylua/) scripts:

* auto-sidebar: Automatically hide and show the sidebar depending on document type.

* column-markers: Show long-line markers at multiple columns, in different colors. 

* open-config: Open config folder in file manager when preferences button is pressed.

* toggle-editor: Hide the editor.  Useful in combination with some sidebar plugins.

* toggle-menu-bar: Hide the menu bar.  For those who like minimal interfaces.

* switch-views: Switch among views: editor-only → editor+sidebar → sidebar-only.

## Usage

* Read the [GeanyLua Introduction](https://plugins.geany.org/geanylua/geanylua-intro.html) for general installation and usage instructions.  If "Lua Script" is not shown in the Plugin Manager, make sure the GeanyLua plugin is installed. See distro-specific documentation for details.

* Scripts are in their own folders for organization, but they were written to be placed directly in the GeanyLua config folder.  On Linux, the folder is located at `~/.config/geany/plugins/geanylua/`

* You may need to create additional folders, like `~/.config/geany/plugins/geanylua/events/`

* When new scripts are added, Geany may need to be restarted.

* When old scripts are modified, Geany *usually* does *not* need to be restarted.

## License

Licensed under the [GPLv2](COPYING).
