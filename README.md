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
### Fonts / Japan UTF 🈴🎎
For Japanese and Korean support
```sh
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji
```
Then, in `sudo nano /etc/locale.gen`, search for `ja_JP.UTF-8 UTF-8` and `ko_KR.UTF-8 UTF-8`.

Reload: `sudo locale-gen`


### YAY AUR 🎃🎁
Yay is an AUR (Arch User Repository) helper that simplifies the installation and management of packages on Arch Linux. It streamlines searching, building, and installing packages from the AUR with easy-to-use commands. Use the `sudo pacman -Syu` command before installing any new packages.
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```


### MINICONDA 🐍📌
Miniconda is a lightweight installer for Conda, a package manager for Python and other languages. It allows you to quickly set up and manage isolated environments and packages with minimal overhead.
```sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
sh ~/miniconda.sh -b -f -p  $HOME/.miniconda
rm ~/miniconda.sh
```
Add these lines to your `.bashrc` or `.zshrc` configuration file:
```sh
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/.miniconda/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.miniconda/etc/profile.d/conda.sh" ]; then
        . "$HOME/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```
If you want to disable the automatic activation of the base environment:
```sh
conda config --set auto_activate_base false
```

### NVM 🧵🍩
NVM (Node Version Manager) is a tool that allows you to easily install, manage, and switch between different versions of Node.js. It simplifies the process of updating Node.js and provides a way to maintain multiple versions for different projects.
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
Add these lines to your `.bashrc` or `.zshrc` configuration file:
```sh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"}
```
