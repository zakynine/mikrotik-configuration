# dec/04/2022 20:04:29 by RouterOS 6.45.9
# software id = E4QH-1RU2
#
# model = RBSXTsq5nD
# serial number = EDC90E454997
/interface wireless
set [ find default-name=wlan1 ] band=5ghz-a/n channel-width=20/40mhz-Ce \
    country=indonesia disabled=no frequency=5745 mac-address=\
    20:47:DA:7F:5C:55 name=wlan1-internet radio-name=redmi-6-exia ssid=\
    KobongLangit
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip hotspot profile
set [ find default=yes ] html-directory=flash/hotspot
/ip pool
add name=dhcp_pool2 ranges=192.168.2.2-192.168.2.254
/ip dhcp-server
add address-pool=dhcp_pool2 disabled=no interface=ether1 name=dhcp1
/ip address
add address=192.168.2.1/24 interface=ether1 network=192.168.2.0
/ip dhcp-client
add dhcp-options=hostname,clientid disabled=no interface=wlan1-internet
/ip dhcp-server network
add address=27.27.1.0/24 dns-server=8.8.8.8,8.8.4.4 gateway=27.27.1.1
add address=192.168.2.0/24 gateway=192.168.2.1
add address=192.168.88.0/24 comment=defconf gateway=192.168.88.1
/ip dns
set allow-remote-requests=yes servers=8.8.8.8,8.8.4.4
/ip dns static
add address=192.168.88.1 comment=defconf name=router.lan
/ip firewall filter
add action=accept chain=input comment=\
    "defconf: accept established,related,untracked" connection-state=\
    established,related,untracked
add action=drop chain=input comment="defconf: drop invalid" connection-state=\
    invalid
add action=accept chain=input comment="defconf: accept ICMP" protocol=icmp
add action=accept chain=input comment=\
    "defconf: accept to local loopback (for CAPsMAN)" dst-address=127.0.0.1
add action=accept chain=forward comment="defconf: accept in ipsec policy" \
    ipsec-policy=in,ipsec
add action=accept chain=forward comment="defconf: accept out ipsec policy" \
    ipsec-policy=out,ipsec
add action=fasttrack-connection chain=forward comment="defconf: fasttrack" \
    connection-state=established,related
add action=accept chain=forward comment=\
    "defconf: accept established,related, untracked" connection-state=\
    established,related,untracked
add action=drop chain=forward comment="defconf: drop invalid" \
    connection-state=invalid
add action=accept chain=input comment=\
    "defconf: accept established,related,untracked" connection-state=\
    established,related,untracked
add action=drop chain=input comment="defconf: drop invalid" connection-state=\
    invalid
add action=accept chain=input comment="defconf: accept ICMP" protocol=icmp
add action=accept chain=input comment=\
    "defconf: accept to local loopback (for CAPsMAN)" dst-address=127.0.0.1
add action=accept chain=forward comment="defconf: accept in ipsec policy" \
    ipsec-policy=in,ipsec
add action=accept chain=forward comment="defconf: accept out ipsec policy" \
    ipsec-policy=out,ipsec
add action=fasttrack-connection chain=forward comment="defconf: fasttrack" \
    connection-state=established,related
add action=accept chain=forward comment=\
    "defconf: accept established,related, untracked" connection-state=\
    established,related,untracked
add action=drop chain=forward comment="defconf: drop invalid" \
    connection-state=invalid
/ip firewall nat
add action=masquerade chain=srcnat comment="defconf: masquerade" \
    ipsec-policy=out,none out-interface=wlan-internet
/system clock
set time-zone-name=Asia/Jakarta
/system identity
set name=MikroTik-WMS-BIT
/system scheduler
add interval=20s name=schedule111 on-event=":if ([:ping 8.8.8.8 interface=wlan1-\
    count=5]=0) do={:system script run wms;}" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
/system script
add dont-require-permissions=yes name=wms owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="#\
    \_Daftar Variable\r\
    \n:local user \"kobonglangit\"\r\
    \n:local pass \"kobonglangit\"\r\
    \n:local gwid \"WAG3-D4-KBU\"\r\
    \n:local ether \"wlan1\"\r\
    \n:local wlan \"GPON00-D4-KBU-3\"\r\
    \n:local wms \"@wmslite.1714639654.000\"\r\
    \n:local redirect \"https://www.livescore.com\"\r\
    \n# Akhir Variable\r\
    \n\r\
    \n:log info \"Menjalankan Auto Login ...\"\r\
    \n:local ip [/ip address get [/ip address find interface=\"\$ether\"] addr\
    ess];\r\
    \n:local ip [put [:pick \$ip 0 [:find \$ip \"/\"]]];\r\
    \n:if ([:len \$ip] = 0) do={\r\
    \n\t:log error (\"Interface \$ether tidak mendapatkan alamat ip --- mencob\
    a mendapatkan...\");\r\
    \n\t/ip dhcp-client release [find interface=\"\$ether\"];\r\
    \n};\r\
    \ndelay 1s\r\
    \n\r\
    \n:local mac [/interface get [find name=\"\$ether\"] mac-address];\r\
    \n:local gateway [/ip dhcp-client get [find interface=\"\$ether\"] gateway\
    ];\r\
    \n:log warning \"IP Address     : \$ip\"\r\
    \n:log warning \"MAC Address : \$mac\"\r\
    \n:log warning \"IP Gateway    : \$gateway\"\r\
    \n\r\
    \n:log info \"Menghubungkan ...\"\r\
    \n\r\
    \n:local num1 [:pick [/system clock get time] 0] \r\
    \n:local num2 [:pick [/system clock get time] 1] \r\
    \n:local num3 [:pick [/system clock get time] 3] \r\
    \n:local num4 [:pick [/system clock get time] 6] \r\
    \n:local char1 [:pick \"abcdefghijklmnopqrstuvwxyz\" \"\$num1\$num2\"]\r\
    \n:local char2 [:pick \"abcdefghijklmnopqrstuvwxyz\" \"2\$num2\"]\r\
    \n:local char3 [:pick \"abcdefghijklmnopqrstuvwxyz\" \"1\$num4\"]\r\
    \n:local user \"\$user.\$char3\$char1\$char2\$wms\"\r\
    \n\r\
    \n:do {\r\
    \n\t:tool fetch mode=https http-header-field=\"Content-Type: application/x\
    -www-form-urlencoded; charset=UTF-8,User-Agent: Mozilla/5.0 (Windows NT 10\
    .0; Win64; x64) AppleWebKit/537.36,Referer: https://welcome2.wifi.id/login\
    /\?gw_id=\$gwid&client_mac=\$mac&wlan=\$wlan&sessionid=FF2400027800EF6D-63\
    87418C&redirect=\$redirect\" http-method=post http-data=\"username=\$user&\
    password=\$pass\" url=\"https://welcome2.wifi.id/wms/auth/authnew/autologi\
    n/quarantine.php\\\?ipc=\$ip&gw_id=\$gwid&mac=\$mac&redirect=\$redirect&wl\
    an=\$wlan\" dst-path=wms.txt;\r\
    \n\t:if ([/ping address=\$gateway interface=\"\$ether\" count=2] = 0) do={\
    \r\
    \n\t\t:log error \"Login gagal... \";\r\
    \n\t\t/ip dhcp-client release [find interface=\"\$ether\"];\r\
    \n\t}\r\
    \n\t:if ([/ping address=\$gateway  interface=\"\$ether\" count=2] != 0) do\
    ={\r\
    \n\t\t:log info \"Login SUKSES...\"\r\
    \n\t\t:local iRes [/file get wms.txt contents];\r\
    \n\t\t:log warning \$iRes\r\
    \n\t\tdelay 1s\r\
    \n\t\t:file remove wms.txt\r\
    \n\t}\r\
    \n}\r\
    \n#:log warning \"\$user.\$char3\$char1\$char2\$wms\""
