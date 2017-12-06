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

# Functions
#
getSNMP(){
    if ping -c 4 $1 &> /dev/null; then
        tl=$(snmpwalk -v 2c -c public -Oq $1 $2 | cut -d' ' -f2)
    else
        tl=null
    fi
    return $tl
}

# Develop 0
#
echo "[{" > ink_level.json
echo "	\"name\": \"Develop 0\"," >> ink_level.json
echo "	\"ink\": [{"  >> ink_level.json
tl=getSNMP "192.168.150.23" "iso.3.6.1.2.1.43.11.1.1.9.1.1" 
echo "		\"BK\": $tl"  >> ink_level.json
echo "	}]"  >> ink_level.json
#
# Develop 1 
echo "}, {"  >> ink_level.json
echo "	\"name\": \"Develop 1 NB\","  >> ink_level.json
echo "	\"ink\": [{"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.21 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "		\"BK\": $tl"  >> ink_level.json
echo "	}]"  >> ink_level.json
#
# Develop 1C
#
echo "}, {"  >> ink_level.json
echo "	\"name\": \"Develop 1 C\","  >> ink_level.json
echo "	\"ink\": [{"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "		\"C\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "		\"M\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "		\"Y\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.19 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "		\"BK\": $tl"  >> ink_level.json
echo "	}]"  >> ink_level.json
#
# Develop 2
#
echo "}, {"  >> ink_level.json
echo "	\"name\": \"Develop 2\","  >> ink_level.json
echo "	\"ink\": [{"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "		\"C\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "		\"M\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "		\"Y\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.24 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "		\"BK\": $tl"  >> ink_level.json
echo "	}]"  >> ink_level.json
#
# Develop 3
#
echo "}, {"  >> ink_level.json
echo "	\"name\": \"Develop 3\","  >> ink_level.json
echo "	\"ink\": [{"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.22 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "		\"BK\": $tl"  >> ink_level.json
echo "	}]"  >> ink_level.json
#
# T3500
#
echo "}, {"  >> ink_level.json
echo "	\"name\": \"T3500\","  >> ink_level.json
echo "	\"ink\": [{"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "		\"C\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.5 | cut -d' ' -f2)
echo "		\"M\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.6 | cut -d' ' -f2)
echo "		\"Y\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "		\"PK\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "		\"G\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.34 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "		\"MK\": $tl"  >> ink_level.json
echo "	}]"  >> ink_level.json
#
# T930
#
echo "}, {"  >> ink_level.json
echo "	\"name\": \"T930\","  >> ink_level.json
echo "	\"ink\": [{"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.4 | cut -d' ' -f2)
echo "		\"C\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.5 | cut -d' ' -f2)
echo "		\"M\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.6 | cut -d' ' -f2)
echo "		\"Y\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.1 | cut -d' ' -f2)
echo "		\"PK\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.2 | cut -d' ' -f2)
echo "		\"G\": $tl,"  >> ink_level.json
tl=$(snmpwalk -v 2c -c public -Oq 192.168.150.35 iso.3.6.1.2.1.43.11.1.1.9.1.3 | cut -d' ' -f2)
echo "		\"MK\": $tl"  >> ink_level.json
echo "	}]"  >> ink_level.json
echo "}]"  >> ink_level.json
