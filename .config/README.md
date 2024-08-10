# NOTES 

### Terminal support - Kitty
! [kato](https://github.com/kato420/katolinuxdotfiles/blob/main/.config/img/Kitty-Terminal-Emulator.png)
Kitty does support OSC 52, but it has a bug where it appends to the clipboard each time text is copied rather than replacing it. This bug can be worked around by modifying the `kitty.conf` file to add `no-append`:
```sh
clipboard_control write-primary write-clipboard no-append
```
For more information, go to the documentation link where this bug was resolved: https://github.com/tmux/tmux/wiki/Clipboard
