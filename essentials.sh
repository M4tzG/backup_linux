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
    cd _____Hyprland_____ && chmod +x install.sh && ./install.sh

}

all_functions() {
    update_system
    install_apps
    yay_install
    devices
    bash_config
    linux_config
}


# Menu de opções
echo "Escolha as opções que deseja executar:"
echo "1 - Instalar aplicativos"
echo "2 - yay install"
echo "3 - Devices"
echo "4 - Bash config"
echo "5 - Linux config"
echo "6 - all"

read -p "Digite os números separados por espaço: " input

# Processando a entrada do usuário
for choice in $input; do
    case $choice in
        1) install_apps ;;
        2) yay_install ;;
        3) devices ;;
        4) bash_config ;;
        5) linux_config ;;
        6) all_functions ;; 
        *) echo "Opção inválida: $choice" ;;
    esac
done
