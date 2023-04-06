# sep/03/2022 14:14:31 by RouterOS 6.48.6
# software id = LBXR-09C9
#
# model = RBSXTsq5nD
# serial number = HCW08FCGA4M
/interface wireless
set [ find default-name=wlan1 ] band=5ghz-a/n channel-width=20/40mhz-eC \
    disabled=no frequency=5805 mac-address=0C:A8:A7:C6:1B:DA ssid=\
    KGS-byte@wifi.id
/interface ethernet
set [ find default-name=ether1 ] name=ether1-internet
/interface list
add comment=defconf name=WAN
add comment=defconf name=LAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=default-dhcp ranges=192.168.88.10-192.168.88.254
/ip dhcp-server
add address-pool=default-dhcp disabled=no interface=ether1-internet name=\
    defconf
/ip neighbor discovery-settings
set discover-interface-list=LAN
/interface list member
add comment=defconf interface=ether1-internet list=LAN
add comment=defconf interface=wlan1 list=WAN
/ip address
add address=192.168.3.1/24 comment=defconf interface=ether1-internet network=\
    192.168.3.0
/ip dhcp-client
add comment=defconf disabled=no interface=wlan1
/ip dhcp-server network
add address=192.168.88.0/24 comment=defconf gateway=192.168.88.1
/ip dns
set allow-remote-requests=yes
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
add action=drop chain=input comment="defconf: drop all not coming from LAN" \
    in-interface-list=!LAN
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
add action=drop chain=forward comment=\
    "defconf: drop all from WAN not DSTNATed" connection-nat-state=!dstnat \
    connection-state=new in-interface-list=WAN
/ip firewall nat
add action=masquerade chain=srcnat comment="defconf: masquerade" \
    ipsec-policy=out,none out-interface-list=WAN
/system clock
set time-zone-name=Asia/Jakarta
/system identity
set name=sxt-sq-pb
/system scheduler
add interval=20s name=schedule1 on-event=":if ([:ping 8.8.8.8 interface=wlan1 \
    count=5]=0) do={:system script run wms;}" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
/system script
add dont-require-permissions=yes name=wms owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="#\
    \_Daftar Variable\r\
    \n:local user \"kgsdevnet\"\r\
    \n:local pass \"pasopati\"\r\
    \n:local gwid \"WAG3-D4-GBL\"\r\
    \n:local ether \"wlan1\"\r\
    \n:local wlan \"GPON05-D4-BMK-3\"\r\
    \n:local wms \"@wmslite.1714274430.000\"\r\
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
    /\?gw_id=\$gwid&client_mac=\$mac&wlan=\$wlan&sessionid=FF24000378028370-63\
    12F7A9&redirect=\$redirect\" http-method=post http-data=\"username=\$user&\
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
/tool mac-server
set allowed-interface-list=LAN
/tool mac-server mac-winbox
set allowed-interface-list=LAN
