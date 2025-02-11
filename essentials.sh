# Description: This file contains the essential functions for the installation of Arch Linux
install_apps() {
    sudo pacman -S firefox kitty fastfetch waybar feh ranger vim neovim obsidian discord qbittorrent krita thermald blueman flatpak python-pillo ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer noto-fonts-cjk adobe-source-han-sans-otc-fonts otf-ipafont tlp
    
}

update_system() {
    sudo pacman -Syyuu

}   

yay_install() {
    sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -rf yay
    yay -Y --gendb

}

devices() {
    sudo systemctl start bluetooth.service --now
    sudo systemctl enable bluetooth.service
    sudo systemctl start thermald.service --now
    sudo systemctl enable thermald.service
    sudo systemctl start tlp.service --now
    sudo systemctl enable tlp.service
    
}

bash_config() {
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
}

linux_config() {
    git clone https://github.com/M4tzG/_____Hyprland_____.git

}

install_apps
update_system
yay_install
devices
bash_config
linux_config
