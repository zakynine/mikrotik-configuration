# nov/20/2021 11:39:57 by RouterOS 6.49
# software id = WEBS-GT9R
#
# model = 951Ui-2HnD
# serial number = 643107B8FD7F
/interface bridge
add name=bridge1-int vlan-filtering=yes
/interface wireless
# managed by CAPsMAN
set [ find default-name=wlan1 ] band=2ghz-b/g/n mode=ap-bridge ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/interface bridge port
add bridge=bridge1-int interface=ether1
add bridge=bridge1-int interface=ether2 pvid=100
add bridge=bridge1-int interface=ether3 pvid=110
/interface bridge vlan
add bridge=bridge1-int tagged=ether1 untagged=ether2 vlan-ids=100
add bridge=bridge1-int tagged=ether1 untagged=ether3 vlan-ids=110
/interface wireless cap
# 
set discovery-interfaces=ether1 enabled=yes interfaces=wlan1
/ip address
add address=192.168.88.1/24 interface=bridge1-int network=192.168.88.0
/system identity
set name=MikroTik-sw3-ndalem

