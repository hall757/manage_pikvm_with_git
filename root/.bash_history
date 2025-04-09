dmesg -n 1
rw ; pikvm-update ; ro
rw ; vim /etc/kvmd/override.yaml ; ro
f=/root/.bash_history ; rw ; chattr -i $f ; /usr/bin/vim $f ; chattr +i $f ; git add $f ; ro
systemctl restart kvmd
git add /etc ; add /etc/kvmd ; git add /root ; git add /.gitignore ; git commit
