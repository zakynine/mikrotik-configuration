# jan/02/1970 00:08:44 by RouterOS 6.47.8
# software id = RKI5-TUVU
#
# model = 951Ui-2HnD
# serial number = 4AC7047D9DD1
/interface bridge
add name=bridge1-int vlan-filtering=yes
/interface wireless
# managed by CAPsMAN
set [ find default-name=wlan1 ] band=2ghz-b/g/n mode=ap-bridge ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/interface bridge port
add bridge=bridge1-int interface=ether1
add bridge=bridge1-int interface=ether2 pvid=200
add bridge=bridge1-int interface=ether3 pvid=200
add bridge=bridge1-int interface=ether4 pvid=210
/interface bridge vlan
add bridge=bridge1-int tagged=ether1 untagged=ether2,ether3 vlan-ids=200
add bridge=bridge1-int tagged=ether1 untagged=ether4 vlan-ids=210
/interface wireless cap
# 
set discovery-interfaces=ether1 enabled=yes interfaces=wlan1
/ip address
add address=192.168.88.1/24 interface=bridge1-int network=192.168.88.0
/system identity
set name=MikroTik-sw3-mw
