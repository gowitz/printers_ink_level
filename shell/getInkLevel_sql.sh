#!/bin/bash
#
# Printer - IP adress
#
# 192.168.150.34 - T3500
# 192.168.150.35 - T930
#
# Valriable colors
#
# PK : Photo black
# G  : Grey
# MK : Mat black
# C  : Cyna
# M  : Magenta
# Y  : Yellow
#
# Variable prefix
#
# c_ : cartridge capacity
# l_ : ink level

declare -a capacity
declare -a levelInk

ip='192.168.150.19'
for i in {1..4}
do
    levelInk[${i}]=$(snmpwalk -v 2c -c public -Oq $ip iso.3.6.1.2.1.43.11.1.1.9.1.$i | cut -d' ' -f2)
done

val2=$(echo ${levelInk[*]} | sed -e 's/ /,/g'),0,0,0,0,0,0,0,0

sqlite3 log_plotter_ink.sqlite 'INSERT INTO ink_logs ('printer','l_pk','l_g','l_mk','l_c','l_m','l_y','c_pk','c_g','c_mk','c_c','c_m','c_y') VALUES("Develop 1c",'$val2')'
