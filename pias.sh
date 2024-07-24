#!/bin/bash

# Function to show the sub-menu for program selection in a specific subcategory
program_selection() {
    local SUBCATEGORY=$1
    local PROGRAMS
    local DESCRIPTIONS

    case $SUBCATEGORY in
        "Audio")
            PROGRAMS=(
              "spotify" 
            )
            DESCRIPTIONS=(
              "Spotify: A popular music streaming service."
            )
            ;;
        "Video")
            PROGRAMS=(
              "vlc" 
              "mpv"
            )
            DESCRIPTIONS=(
              "VLC Media Player: A versatile media player that supports various formats."
              "mpv: A media player with a minimalistic interface and powerful features."
            )
            ;;
        "Terminals")
            PROGRAMS=(
              "alacritty" 
              "kitty"
              "starship"
              "zsh"
            )
            DESCRIPTIONS=(
              "Alacritty: A fast, GPU-accelerated terminal emulator."
              "Kitty: A modern, feature-rich terminal emulator."
              "starship: A cross-shell prompt written in Rust."
              "Zsh: (Z shell) is a powerful and versatile shell for Unix-like operating systems."
            )
            ;;
        "Appearance")
            PROGRAMS=(
              "nwg-look"
              "lxappearance"
            )
            DESCRIPTIONS=(
              "Nwg-look: A tool for customizing the appearance of GTK themes for Wayland."
              "lxappearance: A tool for customizing the appearance of GTK themes for X."
            )
            ;;
        "File Managers")
            PROGRAMS=(
              "ranger" 
              "thunar"
              "pcmanfm"
            )
            DESCRIPTIONS=(
              "Ranger: A terminal file manager with a curses interface."
              "Thunar: A lightweight file manager for Xfce."
              "pcmanfm: A lightweight file manager."
            )
            ;;
        "Security")
            PROGRAMS=(
              "bitwarden"
            )
            DESCRIPTIONS=(
              "Bitwarden: A secure and open-source password manager."
            )
            ;;
        "Browsers")
            PROGRAMS=(
              "firefox" 
              "brave-bin"
            )
            DESCRIPTIONS=(
              "Firefox: A widely-used open-source web browser."
              "Brave: A privacy-focused web browser with built-in ad-blocking."
            )
            ;;
        "Chats")
            PROGRAMS=(
              "discord"
            )
            DESCRIPTIONS=(
              "Discord: A platform for voice, video, and text communication for gamers."
            )
            ;;
        "Torrents")
            PROGRAMS=(
              "qbittorrent"
            )
            DESCRIPTIONS=(
              "qBittorrent: A free and open-source torrent client."
            )
            ;;
        "Xorg")
            PROGRAMS=(
              "qtile"
              "qtile-extras"
              "xmonad"
              "xmonad-contrib"
            )
            DESCRIPTIONS=(
              "Qtile: A tiling window manager for Xorg written in Python."
              "Qtile Extras: Unofficial mods for qtile. Tagged release to match stable qtile releases."
              "XMonad: Lightweight X11 tiled window manager written in Haskell."
              "XMonad Contrib: Community-maintained extensions for XMonad."
            )
            ;;
        "Wayland")
            PROGRAMS=(
              "hyprland" 
              "hyprpaper"
              "wlogout"
            )
            DESCRIPTIONS=(
              "Hyprland: A dynamic tiling Wayland compositor."
              "Hyprpaper: A wallpaper utility for Hyprland."
              "wlogout: A utility for logging out of a Wayland session."
            )
            ;;
        "Editors")
            PROGRAMS=(
              "visual-studio-code-bin" 
              "emacs" 
              "neovim"
            )
            DESCRIPTIONS=(
              "VS Code: A powerful and popular code editor from Microsoft."
              "Emacs: A highly customizable text editor and development environment."
              "Neovim: An extensible text editor with a focus on modernity and usability."
            )
            ;;
        "Languages")
            PROGRAMS=(
              "python" 
              "rust"
            )
            DESCRIPTIONS=(
              "Python: A high-level programming language."
              "Rust: A systems programming language focused on safety and performance."
            )
            ;;
        "Tools")
            PROGRAMS=(
              "git" 
              "docker"
              "base-devel"
              "devtools"
              "npm"
              "typescript-language-server"
              "tldr"
              "zoxide"
            )
            DESCRIPTIONS=(
              "Git: A version control system."
              "Docker: A platform for developing, shipping, and running applications in containers."
              "Base-devel: Essential development tools needed for building and compiling software."
              "Devtools: Tools and utilities for software development."
              "NPM: A package manager for JavaScript, used to manage and install Node.js packages."
              "TypeScript Language Server: Provides language support for TypeScript in editors."
              "tldr: Simplified and community-driven man pages."
              "zoxide: A faster way to navigate directories."
            )
            ;;
        "Bars")
            PROGRAMS=(
              "waybar"
              "xmobar"
            )
            DESCRIPTIONS=(
              "Waybar: A highly customizable Wayland bar."
              "Xmobar: A minimalistic text-based status bar for Xmonad."
            )
            ;;
        "Launchers")
            PROGRAMS=(
              "rofi"
              "wofi"
            )
            DESCRIPTIONS=(
              "Rofi: A window switcher, application launcher and dmenu replacement."
              "Wofi: launcher for wlroots-based wayland compositors."
            )
            ;;
        "Themes")
            PROGRAMS=(
              "tokyonight-gtk-theme-git"
              "bibata-cursor-theme"
              "catppuccin-cursors-mocha"
              "nordic-theme"
              "papirus-icon-theme"
            )
            DESCRIPTIONS=(
              "Tokyo Night GTK dark theme"
              "Cursor theme."
              "Catppuccin Mocha themed cursors."
              "Nordic GTK theme."
              "Papirus Icon theme."
            )
            ;;
        "Fonts")
            PROGRAMS=(
              "ttf-dejavu"
              "ttf-fira-code"
              "ttf-font-awesome"
              "ttf-iosevka-nerd"
              "ttf-iosevkaterm-nerd"
              "ttf-jetbrains-mono"
              "ttf-jetbrains-mono-nerd"
              "ttf-mononoki-nerd"
              "ttf-ubuntu-font-family"
              "ttf-ubuntu-mono-nerd"
              "ttf-ubuntu-nerd"
            )
            DESCRIPTIONS=(
              "DejaVu Fonts: A set of fonts covering a wide range of Unicode characters."
              "Fira Code: A monospaced font with programming ligatures."
              "Awesome: A font library that includes a comprehensive set of scalable vector icons for web design."
              "Iosevka: A monospaced font designed for coding with additional icons and symbols from the Nerd Fonts collection."
              "Iosevka Terminal: Nerd Font icons and symbols, optimized for terminal and coding use."
              "JetBrainsMono: A modern monospaced font tailored for programming."
              "JetBrains Mono with added Nerd Font glyphs, combining a programming-friendly design with additional icons and symbols."
              "Mononoki: A monospaced font for coding, enhanced with additional icons and symbols."
              "Ubuntu: A set of humanist sans-serif typefaces designed for readability and modern aesthetics."
              "Ubuntu: Ubuntu Mono with extra Nerd Font glyphs, offering a monospaced design with additional icons and symbols."
              "Ubuntu: The Ubuntu Font Family enhanced with Nerd Font symbolsi."
            )
            ;;
        *)
            dialog --msgbox "Unknown subcategory selected" 6 20
            return
            ;;
    esac

    local OPTIONS=()

    # Build the dialog command with options
    for i in "${!PROGRAMS[@]}"; do
        OPTIONS+=("${PROGRAMS[$i]}" "${DESCRIPTIONS[$i]}" off)
    done

    # Display the program selection dialog
    local CHOICE
    CHOICE=$(dialog --clear --title "$SUBCATEGORY Programs" \
                    --checklist "Select programs to install:" 15 50 5 \
                    "${OPTIONS[@]}" \
                    2>&1 >/dev/tty)

    # Convert the choice into an array
    IFS=' ' read -r -a SELECTED <<< "$CHOICE"

    # Remove extra quotes from the selection
    SELECTED=("${SELECTED[@]//\"/}")

    # Install the selected programs
    if [ ${#SELECTED[@]} -gt 0 ]; then
        dialog --msgbox "Installing: ${SELECTED[*]}" 7 40
        paru -S --noconfirm "${SELECTED[@]}"
    else
        dialog --msgbox "No programs selected." 6 20
    fi
}

# Function to show the main category selection menu
show_main_category_menu() {
    local CHOICE
    CHOICE=$(dialog --clear --title "Select Main Category" \
                    --menu "Choose a category:" 15 50 5 \
                    "Multimedia" "Multimedia programs" \
                    "Utilities" "Utility programs" \
                    "Internet" "Internet-related programs" \
                    "Window Managers" "Window management programs" \
                    "Development" "Development tools" \
                    2>&1 >/dev/tty)

    case $CHOICE in
        "Multimedia")
            show_subcategory_menu "Multimedia"
            ;;
        "Utilities")
            show_subcategory_menu "Utilities"
            ;;
        "Internet")
            show_subcategory_menu "Internet"
            ;;
        "Window Managers")
            show_subcategory_menu "Window Managers"
            ;;
        "Development")
            show_subcategory_menu "Development"
            ;;
        *)
            dialog --msgbox "Invalid category selected" 6 20
            ;;
    esac
}

# Function to show the subcategory menu based on the selected main category
show_subcategory_menu() {
    local MAIN_CATEGORY=$1
    local CHOICE

    case $MAIN_CATEGORY in
        "Multimedia")
            CHOICE=$(dialog --clear --title "Select Multimedia Subcategory" \
                            --menu "Choose a subcategory:" 15 50 2 \
                            "Audio" "Audio programs" \
                            "Video" "Video programs" \
                            2>&1 >/dev/tty)
            ;;
        "Utilities")
            CHOICE=$(dialog --clear --title "Select Utilities Subcategory" \
                            --menu "Choose a subcategory:" 15 50 7 \
                            "Terminals" "Terminal programs" \
                            "Appearance" "Appearance tools" \
                            "File Managers" "File managers" \
                            "Security" "Security tools" \
                            "Themes" "Themes tools" \
                            "Fonts" "Fonts tools" \
                            2>&1 >/dev/tty)
            ;;
        "Internet")
            CHOICE=$(dialog --clear --title "Select Internet Subcategory" \
                            --menu "Choose a subcategory:" 15 50 3 \
                            "Browsers" "Web browsers" \
                            "Chats" "Chat applications" \
                            "Torrents" "Torrent clients" \
                            2>&1 >/dev/tty)
            ;;
        "Window Managers")
            CHOICE=$(dialog --clear --title "Select Window Managers Subcategory" \
                            --menu "Choose a subcategory:" 15 50 3 \
                            "Xorg" "Xorg window managers" \
                            "Wayland" "Wayland window managers" \
                            "Bars" "Status bars for window managers" \
                            "Launchers" "Menu launchers for window managers" \
                            2>&1 >/dev/tty)
            ;;
        "Development")
            CHOICE=$(dialog --clear --title "Select Development Subcategory" \
                            --menu "Choose a subcategory:" 15 50 3 \
                            "Editors" "Code editors" \
                            "Languages" "Programming languages" \
                            "Tools" "Development tools" \
                            2>&1 >/dev/tty)
            ;;
        *)
            dialog --msgbox "Invalid category selected" 6 20
            return
            ;;
    esac

    case $CHOICE in
        "Audio"|"Video"|"Terminals"|"Appearance"|"File Managers"|"Security"|"Browsers"|"Chats"|"Torrents"|"Xorg"|"Wayland"|"Editors"|"Languages"|"Tools"|"Bars"|"Themes"|"Launchers"|"Fonts")
            program_selection "$CHOICE"
            ;;
        *)
            dialog --msgbox "Invalid subcategory selected" 6 20
            ;;
    esac
}

# Main menu
while true; do
    CHOICE=$(dialog --clear --title "Main Menu" \
                    --menu "Choose one of the following options:" 15 50 3 \
                    "System Update" "Perform a system update" \
                    "Install Programs" "Install selected programs" \
                    "Exit" "Quit the program" \
                    2>&1 >/dev/tty)

    case $CHOICE in
        "System Update")
            dialog --msgbox "Performing system update..." 6 30
            paru -Syu --noconfirm
            ;;
        "Install Programs")
            show_main_category_menu
            ;;
        "Exit")
            break
            ;;
        *)
            dialog --msgbox "Invalid option selected" 6 20
            ;;
    esac
done

# Cleanup
clear

