#!/bin/sh
clear
cd .server
echo "{?} > how much RAM do you want to allocate for the server? (e.g: 1024 , 1024 is a 1GB)"
echo ""
read xmx
clear
echo "Allocated ram: $xmx"
echo "To Stop the server, press the key combination Ctrl + C!"
echo ""
            BINDIR=$(dirname "$(readlink -fn "$0")")
            while true
            do
                java -Dfile.encoding=utf-8 -server -Xmx$xmx"M" -Xms100M -jar server.jar nogui -o true
                echo "To Stop the server, press the key combination Ctrl + C!"
                echo "Reboot:"
                for i in 1
                do
                    echo "$i..."
                    sleep 1
                done
                echo "Reboot complete!"
            done
