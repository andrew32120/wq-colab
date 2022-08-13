wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
mkdir -p "$HOME/.ngrok2" &
touch /root/.ngrok2/ngrok.yml &
chmod 777 /root/.ngrok2 &
chmod 777 /root/.ngrok2/ngrok.yml &
echo "authtoken: 1ocNu9P9mlGOHr5ZB0v3k9ZqD6H_6WK76KEyg3MtwRHohtr7F" > /root/.ngrok2/ngrok.yml 
nohup ./ngrok tcp 3388 &>/dev/null &
./ngrok tcp 3388 &>/dev/null &
echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
