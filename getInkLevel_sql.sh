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

<<COMMENT1
# T3500
ip='192.168.150.34'
for i in {1..6}
do
    capacity[${i}]=$(snmpwalk -v 2c -c public -Oq $ip iso.3.6.1.2.1.43.11.1.1.8.1.$i | cut -d' ' -f2)
    levelInk[${i}]=$(snmpwalk -v 2c -c public -Oq $ip iso.3.6.1.2.1.43.11.1.1.9.1.$i | cut -d' ' -f2)
done

# T930
ip='192.168.150.35'
for i in {1..6}
do
    capacity[${i}]=$(snmpwalk -v 2c -c public -Oq $ip iso.3.6.1.2.1.43.11.1.1.8.1.$i | cut -d' ' -f2)
    levelInk[${i}]=$(snmpwalk -v 2c -c public -Oq $ip iso.3.6.1.2.1.43.11.1.1.9.1.$i | cut -d' ' -f2)
done
COMMENT1

ip='192.168.150.19'
for i in {1..4}
do
    capacity[${i}]=$(snmpwalk -v 2c -c public -Oq $ip iso.3.6.1.2.1.43.11.1.1.8.1.$i | cut -d' ' -f2)
    levelInk[${i}]=$(snmpwalk -v 2c -c public -Oq $ip iso.3.6.1.2.1.43.11.1.1.9.1.$i | cut -d' ' -f2)
done

#echo ${capacity[*]} | sed -e 's/ /,/g'
val='Develop 1c'$(${levelInk[*]} | sed -e 's/ /,/g')'0,0,0,0,0,0,0,0'
#echo ${levelInk[*]} | sed -e 's/ /,/g'


sqlite3 log_plotter_ink.sqlite 'INSERT ink_logs VALUES($val)'
