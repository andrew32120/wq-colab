wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
mkdir -p "$HOME/.ngrok2" && touch /root/.ngrok2/ngrok.yml && chmod 777 /root/.ngrok2 && chmod 777 /root/.ngrok2/ngrok.yml &
echo "authtoken: 1ocNu9P9mlGOHr5ZB0v3k9ZqD6H_6WK76KEyg3MtwRHohtr7F" > /root/.ngrok2/ngrok.yml 
nohup ./ngrok tcp 3388 &>/dev/null &
./ngrok tcp 3388 &>/dev/null &
echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o lite7.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.3/providers/qemu.box
echo "Windows 7 x86 Lite On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo Script by fb.com/thuong.hai.581
sudo qemu-system-x86_64 -hda lite7.qcow2  -smp cores=2  -m 8192M -machine usb=on -device usb-tablet -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic > /dev/null 2>&1