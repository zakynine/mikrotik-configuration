# jan/05/2002 23:36:41 by RouterOS 6.47.8
# software id = KA38-C7K6
#
# model = 450G
# serial number = 725206EC8254
/interface bridge
add name=bridge1
/interface ethernet switch port
set 0 vlan-header=add-if-missing vlan-mode=secure
set 1 default-vlan-id=400 vlan-header=always-strip vlan-mode=secure
set 2 default-vlan-id=500 vlan-header=always-strip vlan-mode=secure
set 3 default-vlan-id=600 vlan-header=always-strip vlan-mode=secure
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/tool user-manager customer
set admin access=\
    own-routers,own-users,own-profiles,own-limits,config-payment-gw currency=\
    Rp password=6414n65ewu time-zone=+05:30
add access="own-routers,own-users,own-profiles,own-limits,config-payment-gw,pa\
    rent-routers,parent-users,parent-profiles,parent-limits,parent-payment-gw" \
    backup-allowed=no disabled=no login=santri parent=admin password=\
    galangsewu paypal-accept-pending=no paypal-allowed=no \
    paypal-secure-response=no permissions=read-write signup-allowed=no \
    time-zone=-00:00
/tool user-manager profile
add name=santri name-for-users="" override-shared-users=unlimited owner=admin \
    price=0 starts-at=now validity=0s
add name=Kamar_1 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kamar_2 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kamar_3 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kamar_4 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kamar_5 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kamar_6 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kamar_7 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kamar_8 name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name="Kamar 9" name-for-users="" override-shared-users=unlimited owner=\
    admin price=0 starts-at=now validity=0s
add name=Kantor name-for-users="" override-shared-users=unlimited owner=admin \
    price=0 starts-at=now validity=0s
/tool user-manager profile limitation
add address-list="" download-limit=0B group-name=santriputri ip-pool="" \
    ip-pool6="" name=santri owner=admin rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-priority=3 rate-limit-rx=6291456B \
    rate-limit-tx=6291456B transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 1" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 2" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 3" owner=admin rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 4" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 5" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 6" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 7" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 8" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name="kamar 9" owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
add address-list="" download-limit=0B group-name=santri ip-pool="" ip-pool6=\
    "" name=Kantor owner=santri rate-limit-burst-rx=7340032B \
    rate-limit-burst-time-rx=5s rate-limit-burst-time-tx=5s \
    rate-limit-burst-treshold-rx=3145728B rate-limit-burst-treshold-tx=\
    3145728B rate-limit-burst-tx=7340032B rate-limit-min-rx=819200B \
    rate-limit-min-tx=819200B rate-limit-rx=6291456B rate-limit-tx=6291456B \
    transfer-limit=0B upload-limit=0B uptime-limit=0s
/interface bridge port
add bridge=bridge1 interface=ether1
add bridge=bridge1 interface=ether2
add bridge=bridge1 interface=ether3
add bridge=bridge1 interface=ether4
/interface ethernet switch vlan
add comment=pasel ports=ether1,ether2 switch=switch1 vlan-id=400
add comment=paut ports=ether1,ether3 switch=switch1 vlan-id=500
add comment=pb ports=ether1,ether4 switch=switch1 vlan-id=600
/system ntp client
set enabled=yes mode=broadcast
/tool user-manager database
set db-path=user-manager
/tool user-manager profile profile-limitation
add from-time=0s limitation=santri profile=santri till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 1" profile=Kamar_1 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 2" profile=Kamar_2 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 3" profile=Kamar_3 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 4" profile=Kamar_4 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 5" profile=Kamar_5 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 6" profile=Kamar_6 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 7" profile=Kamar_7 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 8" profile=Kamar_8 till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation="kamar 9" profile="Kamar 9" till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=Kantor profile=Kantor till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
/tool user-manager router
add coa-port=1700 customer=admin disabled=no ip-address=192.168.1.2 log=\
    auth-fail name=Server shared-secret=galangsewu use-coa=no
add coa-port=1700 customer=admin disabled=yes ip-address=9.9.9.1 log=\
    auth-fail,acct-ok name=serverlan1 shared-secret=galangsewu use-coa=no
add coa-port=1700 customer=admin disabled=yes ip-address=192.168.1.5 log=\
    auth-fail name=server2 shared-secret=galang1000 use-coa=no
/tool user-manager user
add customer=admin disabled=no first-name=Bhekti ipv6-dns=:: last-name=\
    Rivalia password=11051994 shared-users=unlimited username=1000212001 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Yuyun ipv6-dns=:: last-name=\
    Fatikhurrohmah password=19121994 shared-users=unlimited username=\
    1000212002 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ayun ipv6-dns=:: last-name=\
    "Robia'atul Adawiyah" password=17051994 shared-users=2 username=\
    1000213001 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Khilmi ipv6-dns=:: last-name=\
    "Nur Cholisoh" password=14061995 shared-users=2 username=1000213005 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Siti ipv6-dns=:: last-name=Aminah \
    password=31071995 shared-users=2 username=1000213009 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dzunnuroini ipv6-dns=:: last-name=\
    "Khanif Makhfudhoh" password=14101996 shared-users=2 username=1000214002 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Indah ipv6-dns=:: last-name=\
    Prihastuti password=26061996 shared-users=2 username=1000214004 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Mudrikah ipv6-dns=:: password=\
    22061995 shared-users=2 username=1000214006 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nur ipv6-dns=:: last-name=\
    "Indah Solichah" password=22121996 shared-users=2 username=1000214009 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Suci ipv6-dns=:: last-name=\
    "Nur Amalia" password=5081996 shared-users=2 username=1000214010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Zahrotun ipv6-dns=:: last-name=\
    Hasanah password=5101996 shared-users=2 username=1000214011 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ana ipv6-dns=:: last-name=Matswana \
    password=ana300897 shared-users=2 username=1000215001 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dhia ipv6-dns=:: last-name=\
    "Amalina Hanifa" password=8031996 shared-users=2 username=1000215002 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Eti ipv6-dns=:: last-name=Sapriani \
    password=7121995 shared-users=2 username=1000215004 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Faqihatin ipv6-dns=:: last-name=\
    Afifa password=30101996 shared-users=2 username=1000215005 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Istiyana ipv6-dns=:: password=\
    19021995 shared-users=2 username=1000215007 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Melinda ipv6-dns=:: last-name=\
    "Dwi Ayu Damayanti" password=10101995 shared-users=2 username=1000215009 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Najahur ipv6-dns=:: last-name=\
    Rizqiyah password=1101997 shared-users=2 username=1000215010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Qurrota ipv6-dns=:: last-name=\
    "A'yun" password=12061997 shared-users=2 username=1000215011 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ummi ipv6-dns=:: last-name=\
    "Nur Lutfiyah" password=15061997 shared-users=2 username=1000215014 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Anis ipv6-dns=:: last-name=Safitri \
    password=13041994 shared-users=2 username=1000215015 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ahla ipv6-dns=:: last-name=Hulaila \
    password=29111997 shared-users=2 username=1000216001 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Aidah ipv6-dns=:: last-name=\
    Rahmawati password=28081996 shared-users=2 username=1000216002 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Audini ipv6-dns=:: last-name=\
    "Fathia Rizki" password=17031998 shared-users=2 username=1000216004 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ayu ipv6-dns=:: last-name=\
    "Fitri Mardhotillah" password=282930 shared-users=2 username=1000216005 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Devy ipv6-dns=:: last-name=\
    "Mashulatul Mufidah" password=15041998 shared-users=2 username=1000216007 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dewi ipv6-dns=:: last-name=Maemunah \
    password=29071997 shared-users=2 username=1000216008 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Diah ipv6-dns=:: last-name=\
    "Ayuning Tyas" password=31051998 shared-users=2 username=1000216009 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Difla ipv6-dns=:: last-name=\
    "Nailan Nascha" password=5011999 shared-users=2 username=1000216010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ellisa ipv6-dns=:: last-name=\
    Nailizzulfa password=29071998 shared-users=2 username=1000216011 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nur ipv6-dns=:: last-name=Asyikin \
    password=16071997 shared-users=2 username=1000216013 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nur ipv6-dns=:: last-name=\
    "Izzatin Afiqoh" password=18121996 shared-users=2 username=1000216014 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ovi ipv6-dns=:: last-name=\
    "Imroatul Lathifah" password=9061998 shared-users=2 username=1000216015 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Qurrotul ipv6-dns=:: last-name=\
    "Aini Fathimatul Miftah" password=17031997 shared-users=2 username=\
    1000216016 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Roaina ipv6-dns=:: last-name=\
    Agustya password=21081998 shared-users=2 username=1000216017 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Zumrotun Khoiroh" password=10101997 shared-users=2 username=1000216019 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Muhamad ipv6-dns=:: last-name=\
    Husen password=great shared-users=unlimited username=husen \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Aista ipv6-dns=:: last-name=\
    "Wisnu Putra" password=13051994 shared-users=unlimited username=\
    1000112004 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Fathrurrozi ipv6-dns=:: password=\
    11091993 shared-users=unlimited username=1000112007 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="M. Samsul" ipv6-dns=:: last-name=\
    Arifin password=16061993 shared-users=unlimited username=1000112012 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Rizal ipv6-dns=:: last-name=Tarjo \
    password=tarjo shared-users=unlimited username=rizal wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Ahmad ipv6-dns=:: last-name=Jayuli \
    password=16091995 shared-users=unlimited username=1000113001 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Ibrahim ipv6-dns=:: last-name=\
    "Kholil Rahman" password=17121994 shared-users=unlimited username=\
    1000113003 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="M. Abdul" ipv6-dns=:: last-name=\
    Kholil password=25011996 shared-users=unlimited username=1000113005 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="M. Arif" ipv6-dns=:: last-name=\
    Fachrudin password=579Kgs shared-users=unlimited username=1000113006 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="M. Saiqul" ipv6-dns=:: last-name=\
    Haq password=1071993 shared-users=unlimited username=1000113008 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nasrul ipv6-dns=:: last-name=\
    Fathoni password=28101994 shared-users=unlimited username=1000113013 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Setyo ipv6-dns=:: last-name=\
    "Eka Rofi" password=12111994 shared-users=unlimited username=1000113014 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="M. Syahreza" ipv6-dns=:: \
    password=4567 shared-users=unlimited username=1000114004 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ali ipv6-dns=:: last-name=Ikhsan \
    password=8901 shared-users=unlimited username=1000114010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Bagus ipv6-dns=:: last-name=\
    "Puji Lestari" password=1122 shared-users=unlimited username=1000114014 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Mohamad ipv6-dns=:: last-name=\
    Muklisin password="" shared-users=unlimited username=1000114023 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ridwan ipv6-dns=:: password=150196 \
    shared-users=unlimited username=1000114026 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Rif'an" ipv6-dns=:: last-name=\
    "Al Manshur" password=21061995 shared-users=unlimited username=1000114027 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Robby ipv6-dns=:: last-name=\
    Rodhiyya password=8091996 shared-users=unlimited username=1000114029 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Fahmi ipv6-dns=:: last-name=\
    "Afif Alauddin" password=2051997 shared-users=unlimited username=\
    1000115004 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Muhamad ipv6-dns=:: last-name=\
    "Nur Affendi" password=17011998 shared-users=unlimited username=\
    1000115005 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Muhammad ipv6-dns=:: last-name=\
    "Adib Sulaiman" password=6051997 shared-users=unlimited username=\
    1000115010 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Solikin ipv6-dns=:: password=\
    30121997 shared-users=unlimited username=1000115012 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Fahrur ipv6-dns=:: last-name=\
    "Rozzi Iskak" password=rozzi24 shared-users=unlimited username=1000115013 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="M. Fikky" ipv6-dns=:: last-name=\
    "Hafidz Kalamulloh" password=4081997 shared-users=unlimited username=\
    1000115015 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ahmad ipv6-dns=:: last-name=\
    "Abdul Latif" password=funkyone21 shared-users=unlimited username=\
    1000115016 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ahmad ipv6-dns=:: last-name=\
    "Nur Fauzi" password=9091996 shared-users=unlimited username=1000115017 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ali ipv6-dns=:: last-name=\
    "Mahmud Musthofa" password=6121997 shared-users=unlimited username=\
    1000115026 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Ahmad ipv6-dns=:: last-name=Wafa \
    password=22101996 shared-users=unlimited username=1000115028 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Isman ipv6-dns=:: last-name=Nasik \
    password=2 shared-users=unlimited username=1000115006 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Feri Teguh Santoso" password=7071997 shared-users=unlimited username=\
    1000116001 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Khoirul ipv6-dns=:: last-name=\
    Anwar password=16091998 shared-users=unlimited username=1000116004 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="Beny " ipv6-dns=:: last-name=\
    Setiawan password=4041998 shared-users=unlimited username=1000116008 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Afif ipv6-dns=:: last-name=\
    "Syarifudin Yahya" password=21101998 shared-users=unlimited username=\
    1000116011 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="Muhamad " ipv6-dns=:: last-name=\
    Kasan password=asa shared-users=unlimited username=1000116012 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Misbahul ipv6-dns=:: last-name=\
    Munir password=1011997 shared-users=unlimited username=1000116014 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Andy Asharudin" password=4621 shared-users=unlimited username=1000116017 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Puad ipv6-dns=:: last-name=Amin \
    password=Puadamin1998 shared-users=unlimited username=1000116019 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Triadi ipv6-dns=:: last-name=\
    Nopiansyah password=3111997 shared-users=unlimited username=1000116020 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Fudlulul ipv6-dns=:: last-name=\
    "Hakim Musthofa" password=30041997 shared-users=unlimited username=\
    1000116029 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Desta ipv6-dns=:: last-name=\
    "Widayat " password=22301997 shared-users=unlimited username=1000117002 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Faiq ipv6-dns=:: last-name=Fachri \
    password=faiq shared-users=unlimited username=1000117008 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Romandon ipv6-dns=:: password=\
    1031995 shared-users=unlimited username=1000117006 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Ali Imron" password=songo shared-users=unlimited username=1000117007 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Roni ipv6-dns=:: last-name=\
    "Adi Wijaya" password=19031998 shared-users=unlimited username=1000117011 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dimas ipv6-dns=:: last-name=Arinton \
    password=03091999 shared-users=unlimited username=1000117012 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=jati ipv6-dns=:: last-name=nugroho \
    password=nugroho shared-users=unlimited username=jati wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Nur Cholis Ilyas" password=1204199 shared-users=unlimited username=\
    1000117015 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Imam ipv6-dns=:: last-name=Ghozali \
    password=24071998 shared-users=unlimited username=1000117019 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Fany ipv6-dns=:: last-name=\
    "Rozaq Shofawi" password=masfany089123 shared-users=unlimited username=\
    1000117021 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ahmad ipv6-dns=:: last-name=\
    "Rizal Musthofa" password=123456789 shared-users=unlimited username=\
    1000117022 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Izzul Aufa Zia'ul Haque" password=13021999 shared-users=unlimited \
    username=1000117026 wireless-enc-algo=none wireless-enc-key="" \
    wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Ainun Ni'am" password=4031998 shared-users=unlimited username=1000117030 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Aqil ipv6-dns=:: last-name=Ibrahim \
    password=13091999 shared-users=unlimited username=1000117035 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    Amiruddin password=28031998 shared-users=unlimited username=1000117036 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Nur Cholis Ilyas" password=1204199 shared-users=unlimited username=Ilyas \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Nailul wafa" password=nailkeren shared-users=unlimited username=\
    nailalwafa wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Jalaludin ipv6-dns=:: last-name=\
    Mubarok password=jalal shared-users=unlimited username=jalal \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=TIM ipv6-dns=:: last-name=IT \
    password=kags shared-users=unlimited username=it wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Afifa ipv6-dns=:: last-name=\
    "Ayu Mufidah" password=Afif shared-users=2 username=1000217001 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ana ipv6-dns=:: last-name=Nurlaila \
    password=Laila shared-users=2 username=1000217003 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Avila ipv6-dns=:: last-name=Idelia \
    password=Avila shared-users=2 username=1000217004 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Betty ipv6-dns=:: last-name=\
    "Maharani R" password=Rani shared-users=2 username=1000217005 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dea ipv6-dns=:: last-name=\
    "Ananda Salsabila" password=Dea shared-users=2 username=1000217006 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dian ipv6-dns=:: last-name=\
    "Nur Islamiyati" password=Dian shared-users=2 username=1000217007 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dinda ipv6-dns=:: last-name=\
    "Maulina Putri" password=Dinda shared-users=2 username=1000217008 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dwi ipv6-dns=:: last-name=\
    Susilowati password=Dwi shared-users=2 username=1000217010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Fiki ipv6-dns=:: last-name=Rifati \
    password=Fiki shared-users=2 username=1000217011 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Iftinan ipv6-dns=:: last-name=\
    "Nida Firdaus" password=Ifti shared-users=2 username=1000217012 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ima ipv6-dns=:: last-name=\
    Khoirunnisa password=nisa shared-users=2 username=1000217013 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Khoiriyah ipv6-dns=:: password=\
    Khoir shared-users=2 username=1000217014 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Khoirozadit ipv6-dns=:: last-name=\
    Taqwa password=Zadit shared-users=2 username=1000217015 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Lailatus ipv6-dns=:: last-name=\
    Rohmaniyah password=Nia shared-users=2 username=1000217016 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Lita ipv6-dns=:: last-name=Muflikha \
    password=Lita shared-users=2 username=1000217017 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Luluil ipv6-dns=:: last-name=\
    Marifati password=Luluk shared-users=2 username=1000217018 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Matukhatun ipv6-dns=:: last-name=\
    Nimah password=Nimah shared-users=2 username=1000217020 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Mentari ipv6-dns=:: last-name=\
    "Winda Sari" password=Mentari shared-users=2 username=1000217021 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nada ipv6-dns=:: last-name=\
    "Oktaviani H." password=15101999 shared-users=2 username=1000217022 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nur ipv6-dns=:: last-name=Faizah \
    password=Faiz shared-users=2 username=1000217028 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nur ipv6-dns=:: last-name=\
    "Hikmah MM" password=Zera shared-users=2 username=1000217029 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Ekfiyatil Wafah" password=Ekfi shared-users=2 username=1000217033 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Siti ipv6-dns=:: last-name=\
    Istiqomah password=Iis shared-users=2 username=1000217034 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    Maysyaroh password=Mamay shared-users=2 username=1000217035 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Miftakhul Jannah" password=146373 shared-users=2 username=1000217036 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Naili Hanifah" password=Naili shared-users=2 username=1000217037 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Nur Thoyibah" password=Thoyibah shared-users=2 username=1000217038 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Siti ipv6-dns=:: last-name=\
    Qudriyah password=Qudri shared-users=2 username=1000217039 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    Rahmawati password=Mawa shared-users=2 username=1000217040 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=Rukoyah \
    password=Rukoyah shared-users=2 username=1000217041 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Tiya ipv6-dns=:: last-name=\
    "Ratna Sari" password=Ratna shared-users=2 username=1000217042 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Tri ipv6-dns=:: last-name=\
    "Nur Hanifah" password=Ipeh shared-users=2 username=1000217043 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Tsania ipv6-dns=:: last-name=\
    "Rona Salsabila" password=Tsania shared-users=2 username=1000217045 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Viki ipv6-dns=:: last-name=\
    "Salazen Sania" password=Viki shared-users=2 username=1000217046 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Winda ipv6-dns=:: last-name=\
    "Im Muslifah" password=Winda shared-users=2 username=1000217048 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Zahrotin ipv6-dns=:: last-name=\
    Nisa password=astronomi shared-users=2 username=1000217049 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Zahrotul ipv6-dns=:: last-name=\
    Muniroh password=Iroh shared-users=2 username=1000217050 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Zahrotun ipv6-dns=:: last-name=\
    "Ulin Nuha" password=Zahrotun shared-users=2 username=1000217051 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Zakiyatus ipv6-dns=:: last-name=\
    "Sariroh " password=Zakiya shared-users=2 username=1000217052 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Zulfi ipv6-dns=:: last-name=Nabila \
    password=Fina shared-users=2 username=1000217053 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ana ipv6-dns=:: last-name=Wijayanti \
    password=240668 shared-users=2 username=1000216003 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dahlia ipv6-dns=:: password=dahlia \
    shared-users=2 username=1000217056 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Barirotus ipv6-dns=:: last-name=\
    "Sa'diyah" password=barirotus shared-users=2 username=1000217055 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Lutfa ipv6-dns=:: last-name=Awlady \
    password=lutfa shared-users=2 username=1000217059 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Rubi ipv6-dns=:: last-name=\
    Nurcahyatun password=Cahya shared-users=2 username=1000217031 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="Muhammad Azar" ipv6-dns=:: \
    last-name=Shiddiq password=4121998 shared-users=unlimited username=azar \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="M. Khoirurrozikin" ipv6-dns=:: \
    password=10011998 shared-users=unlimited username=rozikin \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Anisatul ipv6-dns=:: last-name=\
    Khasanah password=23081999 shared-users=2 username=1000218001 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Arzia ipv6-dns=:: last-name=Rosyada \
    password=2121997 shared-users=2 username=1000218002 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Fina ipv6-dns=:: last-name=\
    Khimayatu password=25051999 shared-users=2 username=1000218003 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Inayatur ipv6-dns=:: last-name=\
    Rahmawati password=19041998 shared-users=2 username=1000218004 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Lailatul ipv6-dns=:: last-name=\
    "Izzah Maghfiroh" password=24031999 shared-users=2 username=1000218005 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Uswatun ipv6-dns=:: last-name=Nisa \
    password=30031999 shared-users=2 username=1000218006 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ashfi ipv6-dns=:: last-name=\
    "Nashriyya ThoriqisSyufi" password=5061999 shared-users=2 username=\
    1000218008 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Fatkhu ipv6-dns=:: last-name=Shomad \
    password=16072013 shared-users=unlimited username=1000118003 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Mita ipv6-dns=:: last-name=\
    "Devi Ardayanti" password=7121997 shared-users=2 username=1000218010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Felach ipv6-dns=:: last-name=\
    "Aunur Khikmah" password=18111997 shared-users=2 username=1000218009 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Dian ipv6-dns=:: last-name=Agustina \
    password=02081994 shared-users=2 username=1000218011 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Shobikhati ipv6-dns=:: password=\
    02051998 shared-users=2 username=1000218012 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Hajrul " ipv6-dns=:: last-name=\
    Munawaroh password=16042000 shared-users=2 username=1000218013 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Liqo " ipv6-dns=:: last-name=\
    "Ridha Maghfiroh" password=11061999 shared-users=2 username=1000218014 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Laila " ipv6-dns=:: last-name=\
    "Silvia Rohmah" password=10121999 shared-users=2 username=1000218015 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Mufidah " ipv6-dns=:: last-name=\
    "Fikri Amaliyah" password=28071999 shared-users=2 username=1000218016 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Mitha " ipv6-dns=:: last-name=\
    "Octaviana Safitri" password=20807128 shared-users=2 username=1000218018 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Putria " ipv6-dns=:: last-name=\
    Fatmawati password=13032000 shared-users=2 username=1000218019 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Lulu " ipv6-dns=:: last-name=\
    Hanisa password=3032000 shared-users=2 username=1000218020 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Faza " ipv6-dns=:: last-name=\
    "Ilya S.M." password=5111999 shared-users=2 username=1000218021 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Nurismatul " ipv6-dns=:: \
    last-name=Izzah password=23042000 shared-users=2 username=1000218022 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Indrayani " ipv6-dns=:: \
    last-name="Mar'atus Solichah" password=1051998 shared-users=2 username=\
    1000218023 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ermita ipv6-dns=:: last-name=\
    "Khusniyatul Alawiyah" password=4042000 shared-users=2 username=\
    1000218024 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Syuroya ipv6-dns=:: password=\
    7042000 shared-users=2 username=1000218025 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Washifah ipv6-dns=:: password=\
    22082000 shared-users=2 username=1000218026 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Ariska " ipv6-dns=:: last-name=\
    Nofrianti password=18111999 shared-users=2 username=1000218027 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Shofia " ipv6-dns=:: last-name=\
    "Afida Hayya" password=16012000 shared-users=2 username=1000218028 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Khansa " ipv6-dns=:: last-name=\
    "Amalia Fitroh" password=khansa24 shared-users=2 username=1000218030 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Nazilatul " ipv6-dns=:: \
    last-name=Lailiyah password=20022001 shared-users=2 username=1000218031 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Kimiatus " ipv6-dns=:: last-name=\
    "Sa'adah" password=30082000 shared-users=2 username=1000218032 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Laili  " ipv6-dns=:: last-name=\
    "Nur Kholidah" password=lancar shared-users=2 username=1000218033 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Khusnul " ipv6-dns=:: last-name=\
    khotimah password=khusnul19 shared-users=2 username=1000218034 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Nurma " ipv6-dns=:: last-name=\
    Fitriyani password=29121999 shared-users=2 username=1000218035 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Adika " ipv6-dns=:: last-name=\
    "Juita 'Alimia Baroroh" password=bismillah shared-users=2 username=\
    1000218036 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Ika " ipv6-dns=:: last-name=\
    Ismawati password=23101999 shared-users=2 username=1000218037 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Fitri " ipv6-dns=:: last-name=\
    Maulida password=15071999 shared-users=2 username=1000218039 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Rona " ipv6-dns=:: last-name=\
    "Arina Haq" password=21052000 shared-users=2 username=1000218040 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Siska " ipv6-dns=:: last-name=\
    "Dewi Nurvigita" password=7022001 shared-users=2 username=1000218041 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Nafaul " ipv6-dns=:: last-name=\
    Mubarokah password=14102000 shared-users=2 username=1000218042 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Lutiatun " ipv6-dns=:: last-name=\
    Hikmah password=12072000 shared-users=2 username=1000218043 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Noviyati ipv6-dns=:: password=\
    31081998 shared-users=2 username=1000218044 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Arieza " ipv6-dns=:: last-name=\
    "Zulfa Nurul Izzati" password=19072000 shared-users=2 username=1000218045 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Siti " ipv6-dns=:: last-name=\
    "Annisa Rahma" password=11112000 shared-users=2 username=1000218046 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Nurul " ipv6-dns=:: last-name=\
    Khasanah password=26052000 shared-users=2 username=1000218047 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Jinan " ipv6-dns=:: last-name=\
    "Abiyatun Nisa" password=17051999 shared-users=2 username=1000218048 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Rizka " ipv6-dns=:: last-name=\
    "Amalia Al Fauziyyah" password=3041999 shared-users=2 username=1000218049 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nur ipv6-dns=:: last-name=\
    " Sriana" password=14121999 shared-users=2 username=1000218051 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Desi " ipv6-dns=:: last-name=\
    Melianawati password=11121999 shared-users=2 username=1000218052 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="fitria " ipv6-dns=:: last-name=\
    "'izzatun nisa" password=fitria2001 shared-users=2 username=1000218053 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ismiyati ipv6-dns=:: password=\
    "abu bakar nomer1" shared-users=2 username=1000218055 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Iva " ipv6-dns=:: last-name=\
    "Mahdian Tika" password=21072000 shared-users=2 username=1000218056 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Eka " ipv6-dns=:: last-name=\
    "Setyarini Wulandari" password=2062000 shared-users=2 username=1000218057 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Nisa " ipv6-dns=:: last-name=\
    "Muizzul Millati" password=28012000 shared-users=2 username=1000218058 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Hayat ipv6-dns=:: last-name=\
    "Syafi'i" password=25101998 shared-users=unlimited username=1000117020 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Muh Nur" ipv6-dns=:: last-name=\
    Rofiq password=bantal shared-users=unlimited username=rofiq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Tri " ipv6-dns=:: last-name=\
    "Ahmad Fajar" password=31051999 shared-users=unlimited username=\
    1000118005 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Meliawan " ipv6-dns=:: last-name=\
    "Nur Hidayat" password=29072000 shared-users=unlimited username=\
    1000118007 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=yes first-name="Muhammad Warau" ipv6-dns=:: \
    last-name=Assegaf password=15101998 shared-users=unlimited username=\
    1000118008 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Muhammad Ulum " ipv6-dns=:: \
    last-name="Munafi'" password=27121998 shared-users=unlimited username=\
    1000118009 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=yes first-name="Aditya " ipv6-dns=:: last-name=\
    "Rizqy Alfani" password=19052000 shared-users=unlimited username=\
    1000118010 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Muhammad " ipv6-dns=:: last-name=\
    "Syarif Hidayatullah" password=6052001 shared-users=unlimited username=\
    1000118011 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Muhammad " ipv6-dns=:: last-name=\
    "Luthfi Izzulhaq" password=hiyahiyahiya shared-users=unlimited username=\
    1000118012 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=yes first-name=Wasudin ipv6-dns=:: password=\
    10111998 shared-users=unlimited username=1000118013 wireless-enc-algo=\
    none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ramadhani ipv6-dns=:: password=\
    301299 shared-users=unlimited username=1000118014 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Lukman ipv6-dns=:: password=lukman \
    shared-users=unlimited username=1000118021 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Said " ipv6-dns=:: last-name=\
    "Hasyim Alfauzi" password=031001 shared-users=unlimited username=\
    1000118016 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Abdurohman " ipv6-dns=:: \
    last-name=Zakki password=12101999 shared-users=unlimited username=\
    1000118017 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Muhammad " ipv6-dns=:: last-name=\
    "Iqbal Izzat" password=sojokerto123 shared-users=unlimited username=\
    1000118018 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=yes first-name="Muhammad Fahrudin " ipv6-dns=:: \
    last-name=Niam password=5072000 shared-users=unlimited username=\
    1000118019 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Muhammad Hanif " ipv6-dns=:: \
    last-name=Hafidh password=23041999 shared-users=unlimited username=\
    1000118023 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Lamik Nabil" ipv6-dns=:: \
    last-name="Mu'affa" password=7071998 shared-users=unlimited username=\
    1000115020 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Safirotun ipv6-dns=:: last-name=\
    Najah password=safir shared-users=2 username=1000217032 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Retno " ipv6-dns=:: last-name=\
    Nusukah password=30032000 shared-users=2 username=1000218059 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Nurul " ipv6-dns=:: last-name=\
    "Amin Azizi" password=10021997 shared-users=unlimited username=1000115019 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Nur " ipv6-dns=:: last-name=Rohman \
    password=4121995 shared-users=unlimited username=1000115022 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="Muhammad " ipv6-dns=:: last-name=\
    "Zainul Asror" password=28071997 shared-users=unlimited username=\
    1000115024 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Fajar " ipv6-dns=:: last-name=\
    Adiyanto password=rahasia shared-users=unlimited username=1000115035 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Muhamad Zaki " ipv6-dns=:: \
    last-name=Anbari password=9910 shared-users=unlimited username=1000116006 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Mu'ti " ipv6-dns=:: last-name=Ali \
    password=100397 shared-users=unlimited username=1000117025 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Farid " ipv6-dns=:: last-name=\
    Banna password=banna shared-users=unlimited username=banna \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Luthfi " ipv6-dns=:: last-name=\
    Hakim password=12052000 shared-users=unlimited username=1000117037 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Nur Athfi " ipv6-dns=:: last-name=\
    Oktafiyanti password=1101999 shared-users=2 username=1000217024 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Nur " ipv6-dns=:: last-name=\
    Chamidah password=7011998 shared-users=2 username=1000217025 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Nur " ipv6-dns=:: last-name=\
    "Diana Safira" password=1051998 shared-users=2 username=1000217026 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name="Nur " ipv6-dns=:: last-name=\
    "Esti Darmastuti" password=esti shared-users=2 username=1000217027 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Tri " ipv6-dns=:: last-name=\
    "Wahyu Rahmawati" password=21061998 shared-users=2 username=1000217044 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Wakhidatul " ipv6-dns=:: \
    last-name=Mufliah password=4082000 shared-users=2 username=1000217047 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Aliyatul " ipv6-dns=:: last-name=\
    "Izzah " password=1101998 shared-users=2 username=1000217054 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Ilmy " ipv6-dns=:: last-name=\
    "Nur Amalia" password=9091999 shared-users=2 username=1000217058 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Zahrotun ipv6-dns=:: last-name=\
    Nihlah password=Nihlah shared-users=2 username=1000218060 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Annis ipv6-dns=:: last-name=\
    "Zulfa Tsania Farikha" password=6062000 shared-users=2 username=\
    1000218061 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=mukholid ipv6-dns=:: last-name=\
    mukhlid password=g shared-users=unlimited username=1000114024 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    Nafis password=10101997 shared-users=unlimited username=1000116018 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Nur Fikhi " ipv6-dns=:: last-name=\
    Yulianto password=26071997 shared-users=unlimited username=1000115036 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="Junita " ipv6-dns=:: last-name=\
    "Sabrina Pujayanti" password=29082000 shared-users=2 username=1000218062 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name="Nur Ikhsan" ipv6-dns=:: \
    last-name=Maulidani password=18071997 shared-users=unlimited username=\
    1000116009 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Azhar ipv6-dns=:: last-name=\
    "Kanzu Arasy" password=1011997 shared-users=unlimited username=1000118026 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Caca ipv6-dns=:: last-name=Mustofa \
    password=26022000 shared-users=unlimited username=1000118027 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="M Najib" ipv6-dns=:: last-name=\
    "Asrof Imtiyas" password=170400 shared-users=unlimited username=\
    1000118031 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Sinta " ipv6-dns=:: last-name=\
    "Mutia Sari" password=2012000 shared-users=2 username=1000218029 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Nur Jannah" password=jannah shared-users=2 username=1000217061 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Nurul ipv6-dns=:: last-name=Aulia \
    password=aulia shared-users=2 username=1000217030 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Kamala ipv6-dns=:: last-name=\
    "Qurrota A'yun" password=kamala shared-users=2 username=1000218063 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=yes first-name=Daniel ipv6-dns=:: last-name=\
    Passarella password=17121999 shared-users=unlimited username=1000118034 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Ulha ipv6-dns=:: last-name=\
    Naililmuna password=cantik shared-users=2 username=1000213012 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siska ipv6-dns=:: last-name=\
    Andriyani password=14061999 shared-users=2 username=1000218064 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=irwan ipv6-dns=:: password=1 \
    shared-users=2 username=1 wireless-enc-algo=none wireless-enc-key="" \
    wireless-psk=""
add customer=admin disabled=no first-name=Nova ipv6-dns=:: last-name=Elisa \
    password=nova shared-users=2 username=1000218065 wireless-enc-algo=none \
    wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Monica ipv6-dns=:: last-name=\
    "Fikri Adabin" password=monica shared-users=2 username=1000218066 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Rizki ipv6-dns=:: last-name=\
    Nurjanah password=19081997 shared-users=2 username=1000218067 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Umi " ipv6-dns=:: last-name=\
    Latifah password=26071996 shared-users=2 username=1000218068 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Salma " ipv6-dns=:: last-name=\
    "Adita Ningrum" password=14102000 shared-users=unlimited username=\
    1000219001 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Aulia ipv6-dns=:: last-name=\
    " Salwa Alfaina" password=25042000 shared-users=unlimited username=\
    1000219002 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="An 'Umillah " ipv6-dns=:: \
    last-name=Hasya password=18062000 shared-users=unlimited username=\
    1000219003 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Erik ipv6-dns=:: last-name=\
    "Prasetya Aji" password=2082000 shared-users=unlimited username=\
    1000119002 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Mohammad Syauqy" ipv6-dns=:: \
    last-name="Radja Robbany" password=28102000 shared-users=unlimited \
    username=1000119004 wireless-enc-algo=none wireless-enc-key="" \
    wireless-psk=""
add customer=admin disabled=no first-name=Wahidah ipv6-dns=:: last-name=\
    "Ulin Nihayati" password=6022000 shared-users=2 username=1000218069 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Anggit ipv6-dns=:: last-name=\
    Triyanto password=09031999 shared-users=unlimited username=1000118036 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Alhaliza ipv6-dns=:: last-name=\
    "Rizma Elvariani" password=29072001 shared-users=unlimited username=\
    1000219004 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Angelia ipv6-dns=:: last-name=\
    "Fawwaza Marsa Marzuki" password=01122001 shared-users=unlimited \
    username=1000219005 wireless-enc-algo=none wireless-enc-key="" \
    wireless-psk=""
add customer=santri disabled=no first-name=Apriyani ipv6-dns=:: last-name=\
    "Nurul Hidayah" password=28042002 shared-users=unlimited username=\
    1000219006 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ayyi ipv6-dns=:: last-name=\
    "Imana Auliaamafaza" password=02122000 shared-users=unlimited username=\
    1000219007 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Bintan ipv6-dns=:: last-name=\
    "Atiul Khusna" password=24012002 shared-users=unlimited username=\
    1000219008 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Dewi ipv6-dns=:: last-name=\
    "Shely Anggita" password=16052001 shared-users=unlimited username=\
    1000219009 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Dinda ipv6-dns=:: last-name=\
    "Bela Sakti" password=15052001 shared-users=unlimited username=1000219010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Diyah ipv6-dns=:: last-name=\
    "Kholisotun Nikmah " password=02022001 shared-users=unlimited username=\
    1000219011 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Dzakiyyah ipv6-dns=:: last-name=\
    "Nur 'Azizah " password=04022001 shared-users=unlimited username=\
    1000219012 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Eria ipv6-dns=:: last-name=\
    "Nanda Fakhrunnisa " password=12072001 shared-users=unlimited username=\
    1000219013 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Faniqotul ipv6-dns=:: last-name=\
    "Khauni  " password=03062001 shared-users=unlimited username=1000219014 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Fisqiyatul ipv6-dns=:: last-name=\
    "Khayati  " password=02042001 shared-users=unlimited username=1000219015 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Fitri ipv6-dns=:: last-name=\
    "Alfiyana  " password=21071998 shared-users=unlimited username=1000219016 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ifana ipv6-dns=:: last-name=\
    "Auliyya  " password=29071999 shared-users=unlimited username=1000219017 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ikhda ipv6-dns=:: last-name=\
    "Nur Annisa " password=02091998 shared-users=unlimited username=\
    1000219018 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Inayatul ipv6-dns=:: last-name=\
    "Muthohharoh  " password=12042000 shared-users=unlimited username=\
    1000219019 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Irma ipv6-dns=:: last-name=\
    "Dwi Tiana " password=02062000 shared-users=unlimited username=1000219020 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Izzatul ipv6-dns=:: last-name=\
    "Maghfiroh  " password=04061998 shared-users=unlimited username=\
    1000219021 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Kurnia ipv6-dns=:: last-name=\
    "Azizah Mu'awadoh " password=23052000 shared-users=unlimited username=\
    1000219022 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Lia ipv6-dns=:: last-name=\
    "Izatul Umma " password=20062000 shared-users=unlimited username=\
    1000219023 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Lulu ipv6-dns=:: last-name=\
    "Laely Ramdany " password=08122000 shared-users=unlimited username=\
    1000219024 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Lutfia ipv6-dns=:: last-name=\
    "Rahmawati  " password=23082001 shared-users=unlimited username=\
    1000219025 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Maulida ipv6-dns=:: last-name=\
    "Khoirul Mala " password=19052000 shared-users=unlimited username=\
    1000219026 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Maulida ipv6-dns=:: last-name=\
    "Utami  " password=17062001 shared-users=unlimited username=1000219027 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Miki ipv6-dns=:: last-name=\
    "Okta Viola Salsa" password=13032002 shared-users=unlimited username=\
    1000219028 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Musthofiah ipv6-dns=:: last-name=\
    "  " password=22012001 shared-users=unlimited username=1000219029 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Muthiatur ipv6-dns=:: last-name=\
    "Rohmah  " password=17082001 shared-users=unlimited username=1000219030 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Naela ipv6-dns=:: last-name=\
    "Fadilah  " password=23112000 shared-users=unlimited username=1000219031 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nanda ipv6-dns=:: last-name=\
    "Himayatul Ulya " password=01042001 shared-users=unlimited username=\
    1000219032 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Naqifatus ipv6-dns=:: last-name=\
    "Salma  " password=02092001 shared-users=unlimited username=1000219033 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nisrina ipv6-dns=:: last-name=\
    "Hanif  " password=17022001 shared-users=unlimited username=1000219034 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nissa ipv6-dns=:: last-name=\
    "Atul Asfiya " password=12091998 shared-users=unlimited username=\
    1000219035 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nur ipv6-dns=:: last-name=\
    "Faizah Khusna Yatin" password=03022002 shared-users=unlimited username=\
    1000219036 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nurissalisatul ipv6-dns=:: \
    last-name="Irsa  " password=07122000 shared-users=unlimited username=\
    1000219037 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nurul ipv6-dns=:: last-name=\
    "Isro Ulviana " password=23101998 shared-users=unlimited username=\
    1000219038 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nurus ipv6-dns=:: last-name=\
    "Saadah  " password=05061990 shared-users=unlimited username=1000219039 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Oksiati ipv6-dns=:: last-name=\
    "Khoirunnisa  " password=19012002 shared-users=unlimited username=\
    1000219040 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Putri ipv6-dns=:: last-name=\
    "Eka Ramadhani " password=26122001 shared-users=unlimited username=\
    1000219041 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Rafika ipv6-dns=:: last-name=\
    "Izza Safira " password=20052001 shared-users=unlimited username=\
    1000219042 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Saniyatin ipv6-dns=:: last-name=\
    "Nibroniah  " password=24092001 shared-users=unlimited username=\
    1000219043 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Shofwatun ipv6-dns=:: last-name=\
    "Nisa'  " password=12032001 shared-users=unlimited username=1000219044 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Fahmiyani Wakhida " password=08052001 shared-users=unlimited username=\
    1000219045 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Siti ipv6-dns=:: last-name=\
    "Nur Hidayati " password=28102000 shared-users=unlimited username=\
    1000219046 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Siwi ipv6-dns=:: last-name=\
    "Nurrohmah  " password=03022000 shared-users=unlimited username=\
    1000219047 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ulul ipv6-dns=:: last-name=\
    "Choiriah  " password=28072000 shared-users=unlimited username=1000219048 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Veny ipv6-dns=:: last-name=\
    "Elisa  " password=venyelisa shared-users=unlimited username=1000219049 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Vivi ipv6-dns=:: last-name=\
    "Dwi Sefi Yansyah" password=01092001 shared-users=unlimited username=\
    1000219050 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ahmad ipv6-dns=:: last-name=\
    "Zainul Majied Noor" password=30062001 shared-users=unlimited username=\
    1000119005 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Agung ipv6-dns=:: last-name=\
    Indrajaya password=30112001 shared-users=unlimited username=1000119006 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ahmad ipv6-dns=:: last-name=\
    "Dwinanda Ariij Tsaqiev" password=16092001 shared-users=unlimited \
    username=1000119007 wireless-enc-algo=none wireless-enc-key="" \
    wireless-psk=""
add customer=santri disabled=no first-name="Asif " ipv6-dns=:: last-name=\
    Rozali password=18111999 shared-users=unlimited username=1000119008 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Bibit ipv6-dns=:: last-name=\
    "Syaardi Mubarok" password=13042001 shared-users=unlimited username=\
    1000119010 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Dheyan ipv6-dns=:: last-name=\
    "Rifai Bagaskoro" password=19102000 shared-users=unlimited username=\
    1000119011 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Fajar ipv6-dns=:: last-name=\
    "Lutfi Saldian" password=25072000 shared-users=unlimited username=\
    1000119012 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Fauzan ipv6-dns=:: last-name=\
    "Ilhamul Kamil" password=08082001 shared-users=unlimited username=\
    1000119013 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Miftachul ipv6-dns=:: last-name=\
    Rifki password=21021999 shared-users=unlimited username=1000119015 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Mohammmad ipv6-dns=:: last-name=\
    Mujib password=05042001 shared-users=unlimited username=1000119016 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Arzaqnil Azka" password=15122001 shared-users=unlimited username=\
    1000119017 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    Farhan password=17042002 shared-users=unlimited username=1000119018 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    Mundrik password=15071999 shared-users=unlimited username=1000119019 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Nafiusokhib ipv6-dns=:: last-name=\
    0 password=22062000 shared-users=unlimited username=1000119020 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Rachzuardie ipv6-dns=:: last-name=\
    Ramadhan password=15102000 shared-users=unlimited username=1000119021 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Rifki ipv6-dns=:: last-name=\
    "Aliafi Yahya" password=24102000 shared-users=unlimited username=\
    1000119022 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Rizki ipv6-dns=:: last-name=\
    "Alif Mulyo" password=21052001 shared-users=unlimited username=1000119023 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Rizky ipv6-dns=:: last-name=\
    "Sabiq Rusydan" password=30052001 shared-users=unlimited username=\
    1000119024 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Saifudin ipv6-dns=:: last-name=\
    "Nur Alfianto" password=05042001 shared-users=unlimited username=\
    1000119025 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Septian ipv6-dns=:: last-name=\
    "Azamudin Ahsan" password=10092001 shared-users=unlimited username=\
    1000119026 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Zaki ipv6-dns=:: last-name=\
    "Bahul Fikri" password=02112000 shared-users=unlimited username=\
    1000119027 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name="Khafidatum " ipv6-dns=:: \
    last-name=Musnadah password=13112001 shared-users=unlimited username=\
    1000219051 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=yes first-name=Alhaliza ipv6-dns=:: last-name=\
    "Rizma Elvariani" password=29072001 shared-users=unlimited username=\
    1000219052 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=Ferian ipv6-dns=:: last-name=\
    Afandy password=17042001 shared-users=unlimited username=1000119028 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=santri disabled=no first-name=M ipv6-dns=:: last-name=Darisman \
    password=08062001 shared-users=unlimited username=1000119029 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Muhammad ipv6-dns=:: last-name=\
    "Irvan Muhandis" password=07052001 shared-users=unlimited username=\
    1000119030 wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no first-name=Siti ipv6-dns=:: last-name=\
    Qomariyah password=11041997 shared-users=unlimited username=1000219052 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
