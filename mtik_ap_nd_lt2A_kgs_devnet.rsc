# nov/20/2021 11:43:47 by RouterOS 6.47.8
# software id = 2W0G-DQCS
#
# model = RouterBOARD cAP 2nD
# serial number = C2A00B1D2EEF
/interface wireless
# managed by CAPsMAN
# channel: 2412/20-Ce/gn(30dBm), SSID: KGS Connect Nd Lt 2.2, CAPsMAN forwarding
set [ find default-name=wlan1 ] antenna-gain=0 country=no_country_set \
    frequency-mode=manual-txpower ssid=MikroTik station-roaming=enabled
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip hotspot profile
set [ find default=yes ] html-directory=flash/hotspot
/user group
set full policy="local,telnet,ssh,ftp,reboot,read,write,policy,test,winbox,pas\
    sword,web,sniff,sensitive,api,romon,dude,tikapp"
/ip neighbor discovery-settings
set discover-interface-list=!dynamic
/interface wireless cap
# 
set discovery-interfaces=ether1 enabled=yes interfaces=wlan1
/ip dhcp-client
add !dhcp-options disabled=no interface=ether1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
/system clock
set time-zone-autodetect=no time-zone-name=Asia/Jakarta
/system identity
set name=cap-ndalem-lt1
/system scheduler
add interval=1d name="Reboot Otomatis" on-event="/system reboot" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    mar/06/2021 start-time=02:00:00
add interval=1d name="Remove Session" on-event=RemoveSession policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    mar/07/2021 start-time=03:00:00
