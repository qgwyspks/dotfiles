sudo cp -r . /usr/share/grub/themes/
sudo nvim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
