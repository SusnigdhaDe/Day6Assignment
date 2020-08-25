#!/bin/bash -x

#Help user find degF or degC based on their Conversion Selection. Use
#Case Statement and ensure that the inputs are within the Freezing Point (
#0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )

function degC_to_degF()
{
cel=$1
far=$((($cel*9/5)+32))
echo $far
}

function degF_to_degC()
{
far=$1
cel=$((($far-32)*5/9))
echo $cel
}

read -p "Enter 1 for celcius to farenheit and 2 for farenheit to celcius" n

case $n in

1 ) 	read -p "Enter temp. in celcius between 0 degC and 100 degC" celcius
	farenheit="$(degC_to_degF $celcius)"
	echo $farenheit
;;

2 )     echo "Enter temp. in farenheit between 32 degF and 212 degF"
	read farenheit
        celcius="$(degF_to_degC $farenheit)"
	echo $celcius
;;

* )	echo "Invalid Entry"
;;

esac
