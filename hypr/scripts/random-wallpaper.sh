#!/usr/bin/env bash


# --- Configuration ---
WALLPAPER_DIR="/home/madjidsmail/.config/variety/Downloaded/Unsplash/"
FILL_MODE="fill" # Options: fill, fit, stretch, center, tile

# Find a random image file (e.g., jpg or png)
random_wallpaper=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)

# Set the wallpaper with swaybg
# The existing swaybg process will be replaced by this new command.
if [ -n "$random_wallpaper" ]; then
    # You might want to kill any existing swaybg process first, 
    # but swaybg is usually designed to replace itself.
    # pkill swaybg 
    
    # Set the new wallpaper
    swaybg -m "$FILL_MODE" -i "$random_wallpaper" & 
fi