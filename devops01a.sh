#!/bin/bash

#getDetails(){

#	echo "number of volumes, size of each volume, free space on each volume"     
#	var1=$(command df -i)
	
#	echo "number cpu/cores, information about the cpu/core"
#	var2=$(command iostat)

#	echo "your mac address and ip address"
#	var3=$(command arp -a)
#
#	echo "amount of ram"
#	command top
	
#}

#getDetails

funcVolume(){
	echo " volume:      "

	var1=$(command df -i)
	echo $var1
}

funcCpucore(){
	echo " cpu core:   " 
	var2=$(command iostat)
	echo $var2
}

funcIpaddress(){
	echo " ip address of the device is      "
	var3=$(command arp -a)
	echo $var3
}

funcRam(){
	command top
}

funcVolume
funcIpaddress
funcCpucore
funcRam

