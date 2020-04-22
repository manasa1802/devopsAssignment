#!/bin/bash

funcVolume(){

	if [[ $1 != "" ]]
	then
	echo " volume:      "
	var1=$(command df -i)
	echo $var1

else
	echo "select one of the following: Cpu Volume Ipaddress Ram"
	fi

}

funcCpucore(){
	
	if [[ $1 != "" ]]
	then
	echo " cpu core:   " 
	var2=$(command iostat)
	echo $var2

else
	echo "select one of the following: Cpu Volume Ipaddress Ram"
	fi
}

funcIpaddress(){

	if [[ $1 != "" ]]
	then
	echo " ip address of the device is      "
	var3=$(command arp -a)
	echo $var3
else
	echo "select one of the following: Cpu Volume Ipaddress Ram"
	fi
}

funcRam(){
	if [[ $1 != "" ]]
	then
	command top

else
	echo "select one of the following: Cpu Volume Ipaddress Ram"
	fi
}

funcAll(){
	funcVolume $1
	funcIpaddress $1
	funcCpucore $1
	funcRam $1
}

funcAll all

