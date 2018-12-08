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
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.23 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=1 AND colors_id=1'

# Develop 1NB
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.21 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=2 AND colors_id=1'

# Develop 1c
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=3 AND colors_id=1'
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=3 AND colors_id=2'
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=3 AND colors_id=3'
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=3 AND colors_id=4'

# Develop 2
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=4 AND colors_id=1'
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=4 AND colors_id=2'
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=4 AND colors_id=3'
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=4 AND colors_id=4'

# Develop 3
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.22 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$tl' WHERE printers_id=5 AND colors_id=1'


# HP Designjet T3500
# cc : cartridge capacity
# tl : toner level ou ink level
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.1 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=9 AND colors_id=5'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.2 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=9 AND colors_id=6'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.3 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=9 AND colors_id=7'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.4 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=9 AND colors_id=2'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.5 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.5 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=9 AND colors_id=3'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.8.1.6 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.6 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=9 AND colors_id=4'

# HP Designjet T930
# cc : cartridge capacity
# tl : toner level ou ink level
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.1 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=10 AND colors_id=5'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.2 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=10 AND colors_id=6'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.3 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=10 AND colors_id=7'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.4 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=10 AND colors_id=2'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.5 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.5 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=10 AND colors_id=3'
cc=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.8.1.6 | cut -d' ' -f2)
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.6 | cut -d' ' -f2)
sqlite3 printers.sqlite 'UPDATE printers_colors SET level='$((100 * lt / cc))' WHERE printers_id=10 AND colors_id=4'
