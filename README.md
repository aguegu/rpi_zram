# rpi_zram
Script to dynamically enable ZRAM on a Raspberry Pi or other Linux system.

Automatically detects the number of CPU cores to allocate to ZRAM computation, disables existing swap and enables ZRAM swap.

Download the script and copy to /usr/bin/ folder
> sudo wget -O /usr/bin/zram-on.sh https://raw.githubusercontent.com/aguegu/rpi_zram/master/zram-on.sh

make file executable
> sudo chmod +x /usr/bin/zram-on.sh

edit /etc/rc.local file to run script on boot add `/usr/bin/zram-on.sh` before exit 0
> /usr/bin/zram-on.sh

# reference

* https://github.com/dsobon/zram-config
* https://github.com/openSUSE/kernel/blob/master/Documentation/blockdev/zram.txt

# deactivate

try `zram-off.sh`
