1.)#Running install script

    sudo ./install-hyprland-packages.fish

2.)#Blender Desktop File

    Save it in ~/.local/share/applications/

    Make it executable chmod +x Then run

    update-desktop-database ~/.local/share/applications/

3.)#Battery status 

    chmod +x ~/.config/hypr/scripts/battery_monitor.sh

    Placements

    For script: /home/amrit/.config/hypr/scripts

    For service: /home/amrit/.config/systemd/user

    To enable: systemctl --user enable battery-monitor.service

    To check status: systemctl --user status battery-monitor.service

    Verify sound file:

    ls /usr/share/sounds/Pop/stereo/alert/battery-low.oga

    paplay /usr/share/sounds/Pop/stereo/alert/battery-low.oga

4.)#Changing Mouse cursor

    Download cursor file from gnome-look

    Place folder in

    /usr/share/icons

    It should contain .index file inside folder

    Then in hypland config put(For Jakoolit it will be hyprland.conf) 

exec-once=hyprctl setcursor [THEME] [SIZE]

