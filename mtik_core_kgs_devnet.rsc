# mar/02/2023 11:27:56 by RouterOS 6.49.7
# software id = 0PWD-M1AN
#
# model = RB450Gx4
# serial number = B8D00CA3CF69
/caps-man channel
add band=2ghz-g/n control-channel-width=20mhz frequency=2412 name=channel1
add band=2ghz-g/n control-channel-width=20mhz frequency=2437 name=channel6
add band=2ghz-g/n control-channel-width=20mhz frequency=2462 name=channel11
/interface bridge
add name=bridge-cctv
add name=bridge-ndalem
add name=bridge-pasel
add name=bridge-paut
add name=bridge-pb
add name=bridge-sw-makwo
add name=bridge99
/interface ethernet
set [ find default-name=ether1 ] advertise="10M-half,10M-full,100M-half,100M-f\
    ull,1000M-half,1000M-full,2500M-full,5000M-full,10000M-full" comment=\
    WMS-byte
set [ find default-name=ether2 ] comment=WMS-BIT
set [ find default-name=ether3 ] comment=WMS-PB
set [ find default-name=ether4 ] comment=WMS-ND
set [ find default-name=ether5 ] comment=LOCAL poe-out=forced-on
/interface vlan
add interface=ether5 name=vlan-cctv-mw-210 vlan-id=210
add interface=ether5 name=vlan-cctv-nd-110 vlan-id=110
add interface=ether5 name=vlan-cctv-pusat-300 vlan-id=300
add interface=ether5 name=vlan-int-mw-200 vlan-id=200
add interface=ether5 name=vlan-int-nd-100 vlan-id=100
add interface=ether5 name=vlan-pasel-400 vlan-id=400
add interface=ether5 name=vlan-paut-500 vlan-id=500
add interface=ether5 name=vlan-pb-600 vlan-id=600
add interface=ether5 name=vlan99 vlan-id=99
/caps-man datapath
add bridge=bridge-ndalem name=datapath-ndalem
add bridge=bridge-sw-makwo name=datapath-makwo
add bridge=bridge-pb name=datapath-pb
add bridge=bridge-pasel name=datapath-pasel
add bridge=bridge-paut name=datapath-paut
/caps-man interface
add channel=channel6 channel.frequency="" comment=NDALEM configuration.mode=\
    ap configuration.ssid="KGS Connect 2.5" datapath=datapath-ndalem \
    disabled=no l2mtu=1600 mac-address=C4:AD:34:41:AA:2A master-interface=\
    none name=cAP-ndalem-lorong-balkon radio-mac=C4:AD:34:41:AA:2A \
    radio-name=C4AD3441AA2A
add channel=channel1 channel.frequency="" configuration.ssid=\
    "KGS Connect 1.1" datapath=datapath-ndalem disabled=no l2mtu=1600 \
    mac-address=08:55:31:D4:C8:B5 master-interface=none name=\
    cAP-ndalem-lt1-2g radio-mac=08:55:31:D4:C8:B5 radio-name=085531D4C8B5
add channel.band=5ghz-a/n/ac channel.control-channel-width=20mhz \
    channel.frequency=5805 configuration.mode=ap configuration.ssid=\
    "KGS Connect Faster" datapath=datapath-ndalem disabled=no l2mtu=1600 \
    mac-address=08:55:31:D4:C8:B6 master-interface=none name=\
    cAP-ndalem-lt1-5g radio-mac=08:55:31:D4:C8:B6 radio-name=085531D4C8B6
add channel=channel1 channel.frequency="" configuration.mode=ap \
    configuration.ssid="KGS Connect 2.2" datapath=datapath-ndalem disabled=no \
    l2mtu=1600 mac-address=08:55:31:45:99:9C master-interface=none name=\
    cAP-ndalem-lt2-A12 radio-mac=08:55:31:45:99:9C radio-name=08553145999C
add channel=channel6 channel.frequency="" configuration.mode=ap \
    configuration.ssid="KGS Connect 2.1" datapath=datapath-ndalem disabled=no \
    l2mtu=1600 mac-address=08:55:31:45:89:31 master-interface=none name=\
    "cAP-ndalem-lt2-kamar A11" radio-mac=08:55:31:45:89:31 radio-name=\
    085531458931
add channel=channel11 channel.frequency=2462 comment=PUTRA \
    configuration.hide-ssid=no configuration.ssid="KGS Connect 1.3" datapath=\
    datapath-paut disabled=no l2mtu=1600 mac-address=2C:C8:1B:25:BC:26 \
    master-interface=none mtu=1500 name=cap-putra-hap-lite radio-mac=\
    2C:C8:1B:25:BC:26 radio-name=2CC81B25BC26 rates.basic=\
    18Mbps,24Mbps,36Mbps,48Mbps,54Mbps rates.supported=\
    18Mbps,24Mbps,36Mbps,48Mbps,54Mbps
add channel.band=5ghz-a/n/ac channel.control-channel-width=20mhz \
    channel.frequency=5745 configuration.mode=ap configuration.ssid=\
    "KGS Connect Faster" datapath=datapath-pasel disabled=no l2mtu=1600 \
    mac-address=C4:AD:34:A0:7F:78 master-interface=none name=\
    cap-putra-selatan-5g radio-mac=C4:AD:34:A0:7F:78 radio-name=C4AD34A07F78
add channel.band=5ghz-a/n/ac channel.control-channel-width=20mhz \
    channel.frequency=5805 configuration.country="indonesia 5.7-5.8" \
    configuration.mode=ap configuration.ssid="KGS Connect Faster" datapath=\
    datapath-paut disabled=no l2mtu=1600 mac-address=C4:AD:34:9E:96:C4 \
    master-interface=none mtu=1500 name=cap-putra-utara-5g radio-mac=\
    C4:AD:34:9E:96:C4 radio-name=C4AD349E96C4
add channel=channel1 channel.frequency=2412 comment=Makwo \
    configuration.max-sta-count=10 configuration.mode=ap configuration.ssid=\
    "KGS Connect 2.1" datapath=datapath-makwo disabled=no l2mtu=1600 \
    mac-address=4C:5E:0C:30:FE:89 master-interface=none name=cap-sw-lv-3-mw \
    radio-mac=4C:5E:0C:30:FE:89 radio-name=4C5E0C30FE89
add channel=channel6 channel.frequency=2437 configuration.mode=ap \
    configuration.ssid="KGS Connect 2.2" datapath=datapath-makwo disabled=no \
    l2mtu=1600 mac-address=18:FD:74:2A:80:6C master-interface=none name=\
    capxl-makwo-lt2-2g radio-mac=18:FD:74:2A:80:6C radio-name=18FD742A806C
add channel.band=5ghz-a/n/ac channel.control-channel-width=20mhz \
    channel.frequency=5805 configuration.mode=ap configuration.ssid=\
    "KGS Connect Faster" datapath=datapath-makwo disabled=no l2mtu=1600 \
    mac-address=18:FD:74:2A:80:6D master-interface=none mtu=1500 name=\
    capxl-makwo-lt2-5g radio-mac=18:FD:74:2A:80:6D radio-name=18FD742A806D
add channel=channel11 channel.frequency=2462 configuration.mode=ap \
    configuration.ssid="KGS Connect 3.1" datapath=datapath-makwo disabled=no \
    l2mtu=1600 mac-address=18:FD:74:DE:3C:EE master-interface=none mtu=1500 \
    name=capxl-makwo-lt3-2g radio-mac=18:FD:74:DE:3C:EE radio-name=\
    18FD74DE3CEE
add channel.band=5ghz-a/n/ac channel.control-channel-width=20mhz \
    channel.frequency=5180 configuration.mode=ap configuration.ssid=\
    "KGS Connect Faster 3.1" datapath=datapath-makwo disabled=no l2mtu=1600 \
    mac-address=18:FD:74:DE:3C:EF master-interface=none mtu=1500 name=\
    capxl-makwo-lt3-5g radio-mac=18:FD:74:DE:3C:EF radio-name=18FD74DE3CEF
/caps-man rates
add basic=12Mbps,18Mbps,24Mbps,36Mbps,48Mbps,54Mbps name=rate1 supported=\
    12Mbps,18Mbps,24Mbps,36Mbps,48Mbps,54Mbps
/caps-man interface
add channel=channel11 channel.frequency="" configuration.mode=ap \
    configuration.ssid="KGS Connect 2.3" datapath=datapath-ndalem disabled=no \
    l2mtu=1600 mac-address=C4:AD:34:B6:97:93 master-interface=none name=\
    "cAP-ndalem-lt2 kamar A13" radio-mac=C4:AD:34:B6:97:93 radio-name=\
    C4AD34B69793 rates=rate1
add channel=channel1 channel.frequency=2412 configuration.mode=ap \
    configuration.ssid="KGS Connect 1.1" datapath=datapath-pasel disabled=no \
    l2mtu=1600 mac-address=C4:AD:34:A0:7F:77 master-interface=none mtu=1500 \
    name=cap-putra-selatan-2g radio-mac=C4:AD:34:A0:7F:77 radio-name=\
    C4AD34A07F77 rates=rate1
add channel=channel6 channel.frequency=2437 configuration.mode=ap \
    configuration.ssid="KGS Connect 1.2" datapath=datapath-paut disabled=no \
    l2mtu=1600 mac-address=C4:AD:34:9E:96:C3 master-interface=none name=\
    cap-putra-utara-2g radio-mac=C4:AD:34:9E:96:C3 radio-name=C4AD349E96C3 \
    rates=rate1
/interface list
add name=WAN
add name=LAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip hotspot profile
set [ find default=yes ] dns-name=galangsewu.net hotspot-address=2.2.2.2 \
    html-directory=GalangSewu login-by=http-chap,https,mac-cookie
add dns-name=galangsewu.net hotspot-address=2.2.2.2 html-directory=hotspot1 \
    login-by=http-chap,https,mac-cookie name=hsradius1 split-user-domain=yes \
    use-radius=yes
/ip hotspot user profile
set [ find default=yes ] mac-cookie-timeout=1w name=laptop rate-limit=5M/5M \
    session-timeout=1w shared-users=10
add !idle-timeout !keepalive-timeout mac-cookie-timeout=1w name=hp \
    rate-limit=2M/2M session-timeout=1w shared-users=10
add !idle-timeout !keepalive-timeout mac-cookie-timeout=1w name=vip \
    session-timeout=1w
/ip pool
add name=dhcp_pool0 ranges=17.17.1.2-17.17.1.254
add name=dhcp_pool1 ranges=47.47.47.2-47.47.47.254
add name=dhcp_pool2 ranges=27.27.27.2-27.27.27.254
add name=dhcp_pool3 ranges=37.37.37.2-37.37.37.254
add name=dhcp_pool4 ranges=7.7.7.2-7.7.7.254
add name=dhcp_pool5 ranges=57.57.57.2-57.57.57.254
add name=dhcp_pool7 ranges=192.168.99.2-192.168.99.254
add name=pool_vpn ranges=172.16.100.2-172.16.100.254
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=bridge-cctv lease-time=1h \
    name=dhcp1
add address-pool=dhcp_pool1 disabled=no interface=bridge-ndalem lease-time=1h \
    name=dhcp2
add address-pool=dhcp_pool2 disabled=no interface=bridge-pasel lease-time=1h \
    name=dhcp3
add address-pool=dhcp_pool3 disabled=no interface=bridge-paut lease-time=1h \
    name=dhcp4
add address-pool=dhcp_pool4 disabled=no interface=bridge-pb lease-time=1h \
    name=dhcp5
add address-pool=dhcp_pool5 disabled=no interface=bridge-sw-makwo lease-time=\
    1h name=dhcp6
add address-pool=dhcp_pool7 disabled=no interface=bridge99 name=dhcp7
/ip hotspot
add address-pool=dhcp_pool2 addresses-per-mac=unlimited disabled=no \
    interface=bridge-pasel name=hs-bridge-pasel
add address-pool=dhcp_pool3 addresses-per-mac=unlimited disabled=no \
    interface=bridge-paut name=hs-bridge-paut
add address-pool=dhcp_pool4 addresses-per-mac=unlimited disabled=no \
    interface=bridge-pb name=hs-bridge-pb
add address-pool=dhcp_pool1 addresses-per-mac=unlimited disabled=no \
    interface=bridge-ndalem name=hs-bridge-ndalem
add address-pool=dhcp_pool5 addresses-per-mac=unlimited disabled=no \
    interface=bridge-sw-makwo name=hs-bridge-sw-makwo
/ppp profile
add change-tcp-mss=yes local-address=172.16.100.1 name=profile1 only-one=no \
    remote-address=pool_vpn use-encryption=yes
/queue type
set 4 kind=pcq pcq-classifier=src-address,dst-address
add kind=sfq name=backup-hotspot-default
/queue simple
add max-limit=100M/100M name=ndalem queue=\
    pcq-upload-default/pcq-download-default target=bridge-ndalem
add max-limit=100M/100M name=makwo queue=\
    pcq-upload-default/pcq-download-default target=bridge-sw-makwo
add max-limit=100M/100M name=PB queue=pcq-upload-default/pcq-download-default \
    target=bridge-pb
add max-limit=50M/50M name=pasel queue=\
    pcq-upload-default/pcq-download-default target=bridge-pasel
add max-limit=50M/50M name=paut queue=pcq-upload-default/pcq-download-default \
    target=bridge-paut
/tool user-manager customer
set admin access=\
    own-routers,own-users,own-profiles,own-limits,config-payment-gw
/caps-man access-list
add action=accept allow-signal-out-of-range=10s disabled=no mac-address=\
    00:00:00:00:00:00 signal-range=-75..120 ssid-regexp=""
add action=accept allow-signal-out-of-range=10s comment=\
    "1000121018a_Mohammad Malik Hidayatulloh_HP" disabled=yes mac-address=\
    0C:98:38:94:93:6D private-passphrase=1000121018a ssid-regexp=""
add action=accept allow-signal-out-of-range=10s comment=\
    "1000121018b_Mohammad Malik Hidayatulloh_LAPTOP" disabled=yes \
    mac-address=B8:81:98:40:28:0B private-passphrase=1000121018b ssid-regexp=\
    ""
/caps-man manager
set enabled=yes
/interface bridge port
add bridge=bridge-paut interface=vlan-paut-500
add bridge=bridge-pasel interface=vlan-pasel-400
add bridge=bridge-pb interface=vlan-pb-600
add bridge=bridge-ndalem interface=vlan-int-nd-100
add bridge=bridge-sw-makwo interface=vlan-int-mw-200
add bridge=bridge-cctv interface=vlan-cctv-pusat-300
add bridge=bridge-cctv interface=vlan-cctv-mw-210
add bridge=bridge-cctv interface=vlan-cctv-nd-110
add bridge=bridge99 interface=vlan99
/ip neighbor discovery-settings
set discover-interface-list=all
/interface detect-internet
set detect-interface-list=all
/interface l2tp-server server
set default-profile=profile1 ipsec-secret=50275 use-ipsec=yes
/interface list member
add interface=ether1 list=WAN
add interface=vlan-int-mw-200 list=LAN
add interface=ether2 list=WAN
add interface=ether3 list=WAN
add interface=ether4 list=WAN
add interface=vlan-int-nd-100 list=LAN
add interface=vlan-pasel-400 list=LAN
add interface=vlan-paut-500 list=LAN
add interface=vlan-pb-600 list=LAN
add interface=vlan-cctv-mw-210 list=LAN
add interface=vlan-cctv-nd-110 list=LAN
add interface=vlan-cctv-pusat-300 list=LAN
/interface pptp-server server
set default-profile=profile1
/ip address
add address=7.7.7.1/24 interface=bridge-pb network=7.7.7.0
add address=57.57.57.1/24 interface=bridge-sw-makwo network=57.57.57.0
add address=37.37.37.1/24 interface=bridge-paut network=37.37.37.0
add address=47.47.47.1/24 interface=bridge-ndalem network=47.47.47.0
add address=27.27.27.1/24 interface=bridge-pasel network=27.27.27.0
add address=17.17.1.1/24 interface=bridge-cctv network=17.17.1.0
add address=192.168.99.1/24 interface=bridge99 network=192.168.99.0
/ip cloud
set update-time=no
/ip dhcp-client
add add-default-route=no disabled=no interface=ether1 use-peer-dns=no
add add-default-route=no disabled=no interface=ether2 use-peer-dns=no
add add-default-route=no disabled=no interface=ether3 use-peer-dns=no
add add-default-route=no disabled=no interface=ether4 use-peer-dns=no
/ip dhcp-server lease
add address=57.57.57.10 client-id=1:18:fd:74:2a:80:6a mac-address=\
    18:FD:74:2A:80:6A server=dhcp6
add address=192.168.99.5 client-id=1:4c:5e:c:30:fe:84 mac-address=\
    4C:5E:0C:30:FE:84 server=dhcp7
add address=192.168.99.3 client-id=1:6c:3b:6b:be:34:75 mac-address=\
    6C:3B:6B:BE:34:75 server=dhcp7
add address=192.168.99.2 client-id=1:2c:c8:1b:ed:11:ea mac-address=\
    2C:C8:1B:ED:11:EA server=dhcp7
add address=192.168.99.4 client-id=1:dc:2c:6e:6b:6:68 mac-address=\
    DC:2C:6E:6B:06:68 server=dhcp7
add address=37.37.37.10 client-id=1:c4:ad:34:9e:96:c1 mac-address=\
    C4:AD:34:9E:96:C1 server=dhcp4
add address=27.27.27.10 client-id=1:c4:ad:34:a0:7f:75 mac-address=\
    C4:AD:34:A0:7F:75 server=dhcp3
add address=37.37.37.11 client-id=1:2c:c8:1b:25:bc:21 mac-address=\
    2C:C8:1B:25:BC:21 server=dhcp4
/ip dhcp-server network
add address=7.7.0.0/16 gateway=7.7.7.1
add address=7.7.7.0/24 gateway=7.7.7.1
add address=17.17.1.0/24 gateway=17.17.1.1
add address=27.27.27.0/24 gateway=27.27.27.1
add address=37.37.37.0/24 gateway=37.37.37.1
add address=47.47.47.0/24 gateway=47.47.47.1
add address=57.57.57.0/24 gateway=57.57.57.1
add address=192.168.99.0/24 gateway=192.168.99.1
/ip dns
set allow-remote-requests=yes servers=8.8.8.8,118.98.115.77,180.250.13.42
/ip dns static
add address=192.168.99.1 name=dev.net ttl=5m
/ip firewall address-list
add address=37.37.37.0/24 list=putra
add address=27.27.27.0/24 list=putra
add address=47.47.47.0/24 list=Ndalem
add address=57.57.57.0/24 list=Makwo
add address=7.7.0.0/16 list=PB
add address=17.17.1.0/24 list=ALLNETWORK
add address=7.7.7.0/24 list=ALLNETWORK
add address=27.27.27.0/24 list=ALLNETWORK
add address=37.37.37.0/24 list=ALLNETWORK
add address=47.47.47.0/24 list=ALLNETWORK
add address=57.57.57.0/24 list=ALLNETWORK
/ip firewall filter
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here"
add action=drop chain=forward comment="Drop website tertentu" disabled=yes \
    layer7-protocol=*1
/ip firewall mangle
add action=accept chain=prerouting comment=PCC disabled=yes dst-address=\
    192.168.1.0/24
add action=accept chain=prerouting disabled=yes dst-address=192.168.2.0/24
add action=accept chain=prerouting disabled=yes dst-address=192.168.3.0/24
add action=accept chain=prerouting disabled=yes dst-address=192.168.4.0/24
add action=accept chain=prerouting disabled=yes dst-address-list=ALLNETWORK
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-interface=ether1 new-connection-mark=koneksi-1 passthrough=yes
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-interface=ether2 new-connection-mark=koneksi-2 passthrough=yes
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-interface=ether3 new-connection-mark=koneksi-3 passthrough=yes
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-interface=ether4 new-connection-mark=koneksi-4 passthrough=yes
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-bridge-port-list=LAN new-connection-mark=koneksi-1 passthrough=yes \
    per-connection-classifier=both-addresses-and-ports:4/0
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-bridge-port-list=LAN new-connection-mark=koneksi-2 passthrough=yes \
    per-connection-classifier=both-addresses:4/1
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-bridge-port-list=LAN new-connection-mark=koneksi-3 passthrough=yes \
    per-connection-classifier=both-addresses-and-ports:4/2
add action=mark-connection chain=prerouting connection-mark=no-mark disabled=\
    yes in-bridge-port-list=LAN new-connection-mark=koneksi-4 passthrough=yes \
    per-connection-classifier=both-addresses:4/3
add action=mark-routing chain=prerouting connection-mark=koneksi-1 disabled=\
    yes in-bridge-port-list=LAN new-routing-mark=mangle-1 passthrough=yes
add action=mark-routing chain=prerouting connection-mark=koneksi-2 disabled=\
    yes in-bridge-port-list=LAN new-routing-mark=mangle-2 passthrough=yes
add action=mark-routing chain=prerouting connection-mark=koneksi-3 disabled=\
    yes in-bridge-port-list=LAN new-routing-mark=mangle-3 passthrough=yes
add action=mark-routing chain=prerouting connection-mark=koneksi-4 disabled=\
    yes in-bridge-port-list=LAN new-routing-mark=mangle-4 passthrough=yes
add action=mark-routing chain=output connection-mark=koneksi-1 disabled=yes \
    new-routing-mark=mangle-1 passthrough=yes
add action=mark-routing chain=output connection-mark=koneksi-2 disabled=yes \
    new-routing-mark=mangle-2 passthrough=yes
add action=mark-routing chain=output connection-mark=koneksi-3 disabled=yes \
    new-routing-mark=mangle-3 passthrough=yes
add action=mark-routing chain=output connection-mark=koneksi-4 disabled=yes \
    new-routing-mark=mangle-4 passthrough=yes
add action=mark-connection chain=prerouting disabled=yes in-bridge-port-list=\
    LAN new-connection-mark=ether1_conn nth=4,1 passthrough=yes
add action=mark-connection chain=prerouting disabled=yes in-bridge-port-list=\
    LAN new-connection-mark=ether2_conn nth=4,2 passthrough=yes
add action=mark-connection chain=prerouting disabled=yes in-bridge-port-list=\
    LAN new-connection-mark=ether3_conn nth=4,3 passthrough=yes
add action=mark-connection chain=prerouting disabled=yes in-bridge-port-list=\
    LAN new-connection-mark=ether4_conn nth=4,4 passthrough=yes
add action=mark-routing chain=prerouting connection-mark=ether1_conn \
    disabled=yes new-routing-mark=mangle-1 passthrough=no
add action=mark-routing chain=prerouting connection-mark=ether2_conn \
    disabled=yes new-routing-mark=mangle-2 passthrough=no
add action=mark-routing chain=prerouting connection-mark=ether3_conn \
    disabled=yes new-routing-mark=mangle-3 passthrough=no
add action=mark-routing chain=prerouting connection-mark=ether4_conn \
    disabled=yes new-routing-mark=mangle-4 passthrough=no
add action=mark-connection chain=input comment=ECMP disabled=yes \
    in-interface=ether1 new-connection-mark=ether1_conn passthrough=yes
add action=mark-connection chain=input disabled=yes in-interface=ether2 \
    new-connection-mark=ether2_conn passthrough=yes
add action=mark-connection chain=input disabled=yes in-interface=ether3 \
    new-connection-mark=ether3_conn passthrough=yes
add action=mark-connection chain=input disabled=yes in-interface=ether4 \
    new-connection-mark=ether4_conn passthrough=yes
add action=mark-routing chain=output connection-mark=ether1_conn disabled=yes \
    new-routing-mark=mangle-1 passthrough=yes
add action=mark-routing chain=output connection-mark=ether2_conn disabled=yes \
    new-routing-mark=mangle-2 passthrough=yes
add action=mark-routing chain=output connection-mark=ether3_conn disabled=yes \
    new-routing-mark=mangle-3 passthrough=yes
add action=mark-routing chain=output connection-mark=ether4_conn disabled=yes \
    new-routing-mark=mangle-4 passthrough=yes
add action=mark-packet chain=prerouting comment=NTH in-interface=ether5 \
    new-packet-mark=paket-1 nth=4,1 passthrough=yes
add action=mark-packet chain=prerouting in-interface=ether5 new-packet-mark=\
    paket-2 nth=4,2 passthrough=yes
add action=mark-packet chain=prerouting in-interface=ether5 new-packet-mark=\
    paket-3 nth=4,3 passthrough=yes
add action=mark-packet chain=prerouting in-interface=ether5 new-packet-mark=\
    paket-4 nth=4,4 passthrough=yes
add action=mark-routing chain=prerouting new-routing-mark=mangle-1 \
    packet-mark=paket-1 passthrough=no
add action=mark-routing chain=prerouting new-routing-mark=mangle-2 \
    packet-mark=paket-2 passthrough=no
add action=mark-routing chain=prerouting new-routing-mark=mangle-3 \
    packet-mark=paket-3 passthrough=no
add action=mark-routing chain=prerouting new-routing-mark=mangle-4 \
    packet-mark=paket-4 passthrough=no
/ip firewall nat
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here"
add action=masquerade chain=srcnat out-interface-list=WAN
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=37.37.1.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=7.7.7.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=47.47.47.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=27.27.27.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=57.57.57.0/24
/ip hotspot walled-garden
add dst-host=*.kyaigalangsewu.net
add dst-host=*sikap.kyaigalangsewu.net
add dst-host=*sikapp.kyaigalangsewu.net
add dst-host=*.undip.ac.id
/ip proxy
set enabled=yes src-address=37.37.37.215
/ip route
add check-gateway=ping distance=1 gateway=192.168.1.1 routing-mark=mangle-1
add check-gateway=ping distance=1 gateway=192.168.2.1 routing-mark=mangle-2
add check-gateway=ping distance=1 gateway=192.168.3.1 routing-mark=mangle-3
add check-gateway=ping distance=1 gateway=192.168.4.1 routing-mark=mangle-4
add check-gateway=ping distance=1 gateway=\
    192.168.4.1,192.168.1.1,192.168.3.1,192.168.2.1
/ip service
set www-ssl disabled=no
/ppp secret
add name=KGS_pptp password=galangsewu profile=profile1 service=l2tp
/system clock
set time-zone-autodetect=no time-zone-name=Asia/Jakarta
/system identity
set name=CORE-ROUTER
/system logging
set 3 action=disk
add disabled=yes topics=dhcp
add action=disk topics=system
add topics=critical
add action=echo topics=critical
add action=echo topics=system
add topics=system
add action=disk topics=error
add action=echo topics=error
add action=disk topics=warning
/system ntp client
set enabled=yes primary-ntp=202.162.32.12 secondary-ntp=202.59.163.30
/system scheduler
add interval=1d name="Reboot Otomatis" on-event="/system reboot" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    sep/15/2019 start-time=02:00:00
add interval=2d name="Remove Session" on-event=RemoveSession policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    sep/15/2019 start-time=02:03:00
add interval=1d name=on-malam-cap-putra-utara-2g on-event=\
    "/caps-man interface enable cap-putra-utara-2g" policy=\
    read,write,test,password,sniff,sensitive,romon start-date=aug/20/2022 \
    start-time=05:00:00
add interval=1d name=on-malam-cap-putra-selatan-2g on-event=\
    "/caps-man interface enable cap-putra-selatan-2g" policy=\
    read,write,test,password,sniff,sensitive,romon start-date=aug/20/2022 \
    start-time=05:00:00
add interval=1d name=off-malam-cap-putra-utara-2g on-event=\
    "/caps-man interface disable cap-putra-utara-2g" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=aug/21/2022 start-time=01:58:00
add interval=1d name=off-malam-cap-putra-selatan-2g on-event=\
    "/caps-man interface disable cap-putra-selatan-2g" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=aug/21/2022 start-time=01:58:00
add interval=1d name=on-malam-cap-putra-utara-5g on-event=\
    "/caps-man interface enable cap-putra-utara-5g" policy=\
    read,write,test,password,sniff,sensitive,romon start-date=aug/20/2022 \
    start-time=05:00:00
add interval=1d name=on-malam-cap-putra-selatan-5g on-event=\
    "/caps-man interface enable cap-putra-selatan-5g" policy=\
    read,write,test,password,sniff,sensitive,romon start-date=aug/20/2022 \
    start-time=05:00:00
add interval=1d name=off-malam-cap-putra-utara-5g on-event=\
    "/caps-man interface disable cap-putra-utara-5g" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=aug/21/2022 start-time=01:58:00
add interval=1d name=off-malam-cap-putra-selatan-5g on-event=\
    "/caps-man interface disable cap-putra-selatan-5g" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=aug/21/2022 start-time=01:58:00
add interval=1d name=off-malam-caplite-kamar-9 on-event=\
    "/caps-man interface set cap-putra-hap-lite configuration.hide-ssid=yes" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=aug/21/2022 start-time=01:58:00
add interval=1d name=on-malam-caplite-kamar-9 on-event=\
    "/caps-man interface set cap-putra-hap-lite configuration.hide-ssid=no" \
    policy=read,write,test,password,sniff,sensitive,romon start-date=\
    aug/20/2022 start-time=05:00:00
add interval=1m name=remove-queue-hotspot-default on-event=\
    "/queue simple remove [ find name ~\"hs-<\" ]" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
/system script
add dont-require-permissions=no name=script-wms-BIT owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="#\
    \_Daftar Variable\r\
    \n:local user \"kgsdevnet\"\r\
    \n:local pass \"pasopati\"\r\
    \n:local gwid \"WAG3-D4-GBL\"\r\
    \n:local ether \"ether1\"\r\
    \n:local wlan \"GPON05-D4-BMK-3\"\r\
    \n:local wms \"@wmslite.1714274430.000\"\r\
    \n:local redirect \"https://www.google.com\"\r\
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
/tool graphing interface
add interface=bridge-ndalem store-on-disk=no
add interface=bridge-pasel store-on-disk=no
add interface=bridge-paut store-on-disk=no
add interface=bridge-pb store-on-disk=no
add interface=bridge-sw-makwo store-on-disk=no
add interface=ether5 store-on-disk=no
/tool romon
set enabled=yes
/tool user-manager database
set db-path=user-manager
/tool user-manager user
add customer=admin disabled=no ipv6-dns=:: password=cek shared-users=1 \
    username=cek wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
