-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 24")
    hl.exec_cmd("qs -c noctalia-shell")
    -- hl.exec_cmd("sleep 2 && shelly-notifications")   -- uncomment if needed
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
end)
