# RUN

wireguard.exe /installtunnelservice "C:\Program Files\WireGuard\config.conf"

# Gỡ bỏ tunnel service

wireguard.exe /uninstalltunnelservice "config" 

# Xem trạng thái kết nối

wg.exe show

# Xem cấu hình chi tiết

wg.exe show all

############### Server
sudo systemctl enable wg-quick@wg0

sudo systemctl start wg-quick@wg0

sudo wg-quick down wg0 && sudo wg-quick up wg0

sudo wg-quick up wg0

sudo wg show



### Fix Firewall Rules

netsh advfirewall firewall add rule name="Allow ICMPv4 Inbound from WireGuard" `
    protocol=icmpv4:8,any dir=in action=allow remoteip=10.200.200.0/24


netsh advfirewall firewall add rule name="Allow ICMPv4 Outbound to WireGuard" protocol=icmpv4:8,any dir=out action=allow remoteip=10.200.200.0/24

####### Fix Forwarding  Traffic
sudo iptables -S FORWARD   ## View Rules


### NSSM
nssm install MyBatService "C:\Windows\System32\cmd.exe" /c "C:\scripts\my-script.bat"

nssm remove MyBatService confirm
