#!/bin/bash

# Get the active window class
active_class=$(xprop -id $(xprop -root _NET_ACTIVE_WINDOW | cut -d ' ' -f 5) | grep 'WM_CLASS' | cut -d '"' -f 4)

# Define the target application or class (e.g., Minecraft)
target_class=".*Minecraft.*"

# Enable or disable the mouse icon based on the active class
if [[ "$active_class" == "$target_class" ]]; then
    # Enable mouse icon (you can adjust this part based on your system)
    # For example, set a specific cursor theme or icon.
    # ...
else
    # Disable mouse icon (e.g., revert to default cursor theme)
    # ...
fi
