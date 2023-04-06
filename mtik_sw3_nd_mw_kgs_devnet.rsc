# jan/04/1970 22:50:49 by RouterOS 6.47.8
# software id = RKI5-TUVU
#
# model = 951Ui-2HnD
# serial number = 4AC7047D9DD1
/interface bridge
add name=bridge1 vlan-filtering=yes
/interface ethernet
set [ find default-name=ether2 ] name=ether2-ndalem
set [ find default-name=ether3 ] name=ether3-mw
set [ find default-name=ether4 ] name=ether4-cctv
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface vlan
add interface=bridge1 name=vlan-manage-99 vlan-id=99
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/interface bridge port
add bridge=bridge1 interface=ether1
add bridge=bridge1 interface=ether2-ndalem pvid=300
add bridge=bridge1 interface=ether3-mw pvid=300
add bridge=bridge1 frame-types=admit-only-untagged-and-priority-tagged \
    ingress-filtering=yes interface=ether4-cctv pvid=300
/interface bridge vlan
add bridge=bridge1 tagged=ether1,ether2-ndalem vlan-ids=100
add bridge=bridge1 tagged=ether1,ether2-ndalem vlan-ids=110
add bridge=bridge1 tagged=ether1,ether3-mw vlan-ids=200
add bridge=bridge1 tagged=ether1,ether3-mw vlan-ids=210
add bridge=bridge1 tagged=ether1 untagged=ether4-cctv vlan-ids=300
add bridge=bridge1 tagged=ether1,bridge1 vlan-ids=99
/ip address
add address=192.168.99.1/24 interface=vlan-manage-99 network=192.168.99.0
/system identity
set name=MikroTik-sw-core-nd-mw
/system scheduler
add interval=1d name="Reboot Otomatis" on-event="/system reboot" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    sep/15/2019 start-time=02:00:00
add interval=1d name="Remove Session" on-event=RemoveSession policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    sep/15/2019 start-time=03:00:00
/system script
add dont-require-permissions=no name=RemoveSession owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="#\
    \_Script Source : Mikrotik Forums\r\
    \n# Script Starts Here.\r\
    \n# Setting Timeout in Seconds\r\
    \n# Timeout in Seconds, when session update is older -> session closed\r\
    \n:local Timeout 60\r\
    \n \r\
    \n#------------------------------------------\r\
    \n:local LastSessionUpdate;\r\
    \n:local SessionTimeout;\r\
    \n:foreach i in=[/tool user-manager session find where active=yes] do={\r\
    \n \r\
    \n# When was the last Update of the session-informations\r\
    \n:set LastSessionUpdate [/tool user-manager session get \$i till-time]\r\
    \n \r\
    \n# SessionTimeout is a value that tells me how many seconds ago the last \
    update of this session was\r\
    \n:set SessionTimeout ([system clock get time] - [:pick \$LastSessionUpdat\
    e ([:find \$LastSessionUpdate \" \"]+1) [:len \$LastSessionUpdate]]-[/syst\
    em clock get gmt-offset])\r\
    \n \r\
    \n# if last update is more then Timeout seconds ago then close session and\
    \_log it\r\
    \n:if (\$SessionTimeout > \$Timeout) do={\r\
    \n/tool user-manager session remove  numbers=\$i\r\
    \n:log warning (\" Removed false active session Username is  \" . [/tool u\
    ser-manager session get \$i user]);\r\
    \n}\r\
    \n}"
