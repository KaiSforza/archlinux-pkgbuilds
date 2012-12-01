#!/bin/zsh
# script for updating the version control packages

# set the main VCS directory
vcshome='/home/wgiokas/aur/vcs'
run_from=$(pwd)

# i3-git:
cd $vcshome/i3-git
makepkg -siL --noconfirm --needed

# i3-status
cd $vcshome/i3status-git
makepkg -siL --noconfirm --needed

# i3-lock
cd $vcshome/i3lock-git
makepkg -siL --noconfirm --needed

# cower
cd $vcshome/cower-git
makepkg -siL --noconfirm --needed

cd $vcshome/weechat-git
makepkg -siL --noconfirm --needed
cd $vcshome/expac-git
makepkg -siL --noconfirm --needed
cd $vcshome/luakit-git
makepkg -siL --noconfirm --needed
# pacman
#cd $vcshome/pacman-git
#makepkg -siL --noconfirm --needed

## acpi_call-git
#cd $vcshome/../kernel/acpi_call-git
#makepkg $mpkg_flags


#echo "Update repository..."

#repo-add -q -f -s /home/wgiokas/.cache/pkg/giokasw.db.tar.gz /home/wgiokas/.cache/pkg/*$(date +%Y%m%d)*.pkg.tar.xz

#sudo pacman -U --needed ${vcshome}/i3-git/i3-git-$(date +%Y%m%d)-1-x86_64.pkg.tar.xz ${vcshome}/i3lock-git/i3lock-git-$(date +%Y%m%d)-1-x86_64.pkg.tar.xz ${vcshome}/i3status-git/i3status-git-$(date +%Y%m%d)-1-x86_64.pkg.tar.xz 
#sudo pacman -Syu

#echo "============================================================"
#echo "Syncing with home server..."
#
#rsync -ravhz --skip-compress=rar/zip/xz/gz/bz ~/.cache/pkg/i3* usr.server.SRVW:~/A31-personal/os/x86_64/

cd $run_from
