# Arch Setup
## Installation
### References
* [Arch Installation Guide](https://wiki.archlinux.org/title/installation_guide)
* [It's Foss](https://itsfoss.com/install-arch-linux/)
* [phonenixNap](https://phoenixnap.com/kb/arch-linux-install)
* [freeCodeCamp](https://www.freecodecamp.org/news/how-to-install-arch-linux/)
* [Javi Palacios' Guide](https://gist.github.com/fjpalacios/441f2f6d27f25ee238b9bfcb068865db) (includes i3 setup)
## Instructions
set the keyboard
```
ls /usr/share/kbd/keymaps/**/*.map.gz
loadkeys us
```
verify the bootmode (make sure the bootmode is efi by seeing if the below returns a list of files)

```
ls /sys/firmware/efi/efivars
```
### partition the disks
first check for what devices are available
```
fdisk -l
```
now select the disk you want to format
```
fdisk /dev/[sda][nvme0n1]
```
see `It's Foss` guide for formatting (you can answer yes to remove signature if you're formatting a new drive and are okay with overwriting the drive)
finally we need to format each drive
format the efi drive
```
mkfs.fat -F32 /dev/[sda1][nvme0n1p1]
mkfs.ext4 /dev/[sda2][nvme0n1p2]
```
### wifi
start the interactive utility called itwctl
```
iwctl
```
list available devices
```
device list
```
scan for networks
```
station wlan0 scan
station wlan0 get-networks
```
exit network prompt with **CTRL-D**
check connection
```
ping -c 3 www.google.com
```
### Connect to wifi after Initial Setup
`nmcli device wifi connect [Wifi Network Name] password [password]`

## Programs
### xorg
TODO: Configure [desktop file applications](https://github.com/brendanfitz/config-files/edit/master/arch/README.md) for things like jupyter
### xinit
### i3
### Alacritty
### Vim
### picom
### polybar
### rofi
### audio/bluetooth
See [guide from Linux Hint](https://linuxhint.com/configure_bluetooth_arch_linux/)
### arduino
add to group for using ports
```
sudo usermod -aG uucp brendan
```
create a config
```
arduino-cli config init
```
install avr
```
arduino-cli core install arduino:avr
```
list devices
```
arduino-cli board list
```
example usage
```
arduino-cli sketch new MyFirstSketch
arduino-cli compile --fqbn  arduino:avr:nano ~/Arduino/MyFirstSketch
arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:nano -v MyFirstSketch
```
### samba nas
[Helpful reference link]()
```
pacman -S samba
```
downlad the [default configuration file](https://raw.githubusercontent.com/zentyal/samba/master/examples/smb.conf.default) and copy it
```
sudo cp /etc/samba/smb.conf.default /etc/samba/smb.conf
```
test configuration file syntax
```
testparm
```
add user access to the server
```
sudo pdbedit -a -u brendan
```
restart services and enable them
```
sudo systemctl restart smb nmb
sudo systemctl enable smb nmb
```
list public shares
```
smbclient -L 192.168.50.1 -U%
```
make directory for manual mount
```
sudo mkdir /mnt/ElliesHD
```
manually mount
```
sudo mount -t cifs //192.168.50.1/ElliesHD /mnt/ElliesHD -o username=[username],password=[password],uid=1000,gid=1000,vers=2.0
```


