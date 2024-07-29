# Bienvenido 👋
### CS-UTEC
![kato](https://github.com/kato420/katolinuxdotfiles/blob/main/img/katogh.jpg)
[![Instagram](https://img.shields.io/badge/Instagram-@berlinif420-E4405F?style=for-the-badge&logo=instagram&logoColor=white&labelColor=101010)](https://instagram.com/kato420\_0)
[![Spotify](https://img.shields.io/badge/Spotify-kato-800080?style=for-the-badge&logo=spotify&logoColor=white&labelColor=101010)](https://open.spotify.com/user/31bfiugm5s7eynzc3n6ijz6yfh24?si=1d074c9eb23a406d)
[![Discord](https://img.shields.io/badge/Discord-kato420-5865F2?style=for-the-badge&logo=discord&logoColor=white&labelColor=101010)](https://discord.com/)
[![Python](https://img.shields.io/badge/Python-gray?style=for-the-badge&logo=python&logoColor=white&labelColor=101010)]()
[![JavaScript](https://img.shields.io/badge/Java-yellow?style=for-the-badge&logo=javascript&logoColor=white&labelColor=101010)]()
</br>

Configuration files of my system with Linux.

ARCH LINUX
---------
### Fonts / Japan UTF
For Japanese and Korean support
```sh
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji
```
Then, in `sudo nano /etc/locale.gen`, search for ja_JP.UTF-8 UTF-8 and ko_KR.UTF-8 UTF-8.

Reload: `sudo locale-gen`

### YAY AUR
Yay is an AUR (Arch User Repository) helper that simplifies the installation and management of packages on Arch Linux. It streamlines searching, building, and installing packages from the AUR with easy-to-use commands. Use the `sudo pacman -Syu` command before installing any new packages.
```sh
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

