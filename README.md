# linux_setup

.bashrc has call to 'keychain_defs' file (if exists) that holds
all SSH keys. 'keychain_defs' file differs from machine to
machine.

# Updating YouCompleteMe Vundle plugin
if plugin starts throwing "The ycmd server SHUT DOWN (restart with :YcmRestartServer)"
error, run ``:PluginInstall`` from Vim editor (maybe not required) and after
that, run ``/usr/bin/python3 ./install.py --clang-completer``
