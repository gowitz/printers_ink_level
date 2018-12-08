#!/bin/bash
#
# Printer - IP adress
#
# 192.168.150.23 - Develop 0
# 192.168.150.21 - Develop 1NB
# 192.168.150.19 - Develop 1c
# 192.168.150.24 - Develop 2
# 192.168.150.22 - Develop 3
# 192.168.150.34 - T3500
# 192.168.150.35 - T930
# 192.168.150.25 - Brother compta
#
# Table colors
#
# 1 : BK
# 2 : C
# 3 : M
# 4 : Y
# 5 : PK
# 6 : G
# 7 : MK

# Develop 0
#
echo "<div class=\"tonerinfo-layout\">" > r.html
echo "<table class=\"data-table\" width=\"100px\">" >> r.html
echo "<tr>" >> r.html
echo "<th scope=\"col\" colspan=\"2\" width=\"20px\">Develop 0</th>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.23 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"K.gif\" alt=\"BK\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "</table>" >> r.html
echo "</div>" >> r.html

# Develop 1NB
#
echo "<div class=\"tonerinfo-layout\">" >> r.html
echo "<table class=\"data-table\" width=\"100px\">" >> r.html
echo "<tr>" >> r.html
echo "<th scope=\"col\" colspan=\"2\" width=\"20px\">Develop 1NB</th>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.21 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"K.gif\" alt=\"BK\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "</table>" >> r.html
echo "</div>" >> r.html

# Develop 1c
echo "<div class=\"tonerinfo-layout\">" >> r.html
echo "<table class=\"data-table\" width=\"100px\">" >> r.html
echo "<tr>" >> r.html
echo "<th scope=\"col\" colspan=\"8\" width=\"20px\">Develop 1c</th>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"K.gif\" alt=\"BK\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "<td widhth=\"15px\"><img src=\"C.gif\" alt=\"C\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"M.gif\" alt=\"M\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"Y.gif\" alt=\"Y\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "</table>" >> r.html
echo "</div>" >> r.html

# Develop 2
echo "<div class=\"tonerinfo-layout\">" >> r.html
echo "<table class=\"data-table\" width=\"100px\">" >> r.html
echo "<tr>" >> r.html
echo "<th scope=\"col\" colspan=\"8\" width=\"20px\">Develop 2c</th>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"K.gif\" alt=\"BK\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"C.gif\" alt=\"C\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"M.gif\" alt=\"M\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"Y.gif\" alt=\"Y\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "</table>" >> r.html
echo "</div>" >> r.html

# Develop 3
echo "<div class=\"tonerinfo-layout\">" >> r.html
echo "<table class=\"data-table\" width=\"100px\">" >> r.html
echo "<tr>" >> r.html
echo "<th scope=\"col\" colspan=\"2\" width=\"20px\">Develop 3</th>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.22 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"K.gif\" alt=\"BK\"></td>" >> r.html
echo "<td width=\"100px\">$tl%</td>" >> r.html
echo "</tr>" >> r.html
echo "</table>" >> r.html
echo "</div>" >> r.html

# T3500
# cc : cartridge capacity
# tl : toner level ou ink level
echo "<div class=\"tonerinfo-layout\">" >> r.html
echo "<table class=\"data-table\" width=\"100px\">" >> r.html
echo "<tr>" >> r.html
echo "<th scope=\"col\" colspan=\"8\" width=\"20px\">T3500</th>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.1 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"PK.gif\" alt=\"PK\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.2 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"G.gif\" alt=\"G\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.3 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"MK.gif\" alt=\"MK\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.4 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"C.gif\" alt=\"C\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.5 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.5 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"M.gif\" alt=\"M\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.6 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.6 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"Y.gif\" alt=\"Y\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "</table>" >> r.html
echo "</div>" >> r.html

# T930
# cc : cartridge capacity
# tl : toner level ou ink level
echo "<div class=\"tonerinfo-layout\">" >> r.html
echo "<table class=\"data-table\" width=\"100px\">" >> r.html
echo "<tr>" >> r.html
echo "<th scope=\"col\" colspan=\"8\" width=\"20px\">T930</th>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.1 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"PK.gif\" alt=\"PK\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.2 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"G.gif\" alt=\"G\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.3 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "<td widht=\"15px\"><img src=\"MK.gif\" alt=\"MK\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.4 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"C.gif\" alt=\"C\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.5 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.5 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"M.gif\" alt=\"M\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "<tr>" >> r.html
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.6 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.6 | cut -d' ' -f2)
echo "<td width=\"15px\"><img src=\"Y.gif\" alt=\"Y\"></td>" >> r.html
echo "<td width=\"100px\">$((tl)) ml</td>" >> r.html
echo "</tr>" >> r.html
echo "</table>" >> r.html
echo "</div>" >> r.html
echo "<p>" >> r.html
date >> r.html
echo "</p>" >> r.html

mv r.html /srv/www/htdocs/dashboard/tonerlevel.html
