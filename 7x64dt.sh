echo "===================================="
echo "Download windows files"
echo "===================================="
wget -O w7x64.img https://bit.ly/akuhnetw7X64
echo "===================================="
echo Downloading File From akuh.net
echo "===================================="
apt-get install qemu > /dev/null 2>&1
echo "===================================="
echo "Wait"
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo "===================================="
echo RDP Address:
echo "===================================="
echo "===================================="
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Ctrl+C To Copy"
echo "Wait 1-2 minute to finish bot"
echo "Dont Close This Tab"
echo "Please support akuh.net thank you"
echo "===================================="
echo "===================================="
qemu-system-x86_64 -hda w7x64.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic > /dev/null 2>&1
sleep 43200
echo "===================================="