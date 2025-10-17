#Running install script

sudo ./install-hyprland-packages.fish

#Blender Desktop File

Save it in ~/.local/share/applications/

Make it executable chmod +x Then run

update-desktop-database ~/.local/share/applications/

Battery status 

chmod +x ~/.config/hypr/scripts/battery_monitor.sh

Placements

For script: /home/amrit/.config/hypr/scripts

For service: /home/amrit/.config/systemd/user

To enable: systemctl --user enable battery-monitor.service

To check status: systemctl --user status battery-monitor.service

Verify sound file:

ls /usr/share/sounds/Pop/stereo/alert/battery-low.oga

paplay /usr/share/sounds/Pop/stereo/alert/battery-low.oga
