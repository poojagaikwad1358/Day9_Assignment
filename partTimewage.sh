#!/bin/bash -x

partTime=1
empRatePerHrs=20;

randomCheck=$(($RANDOM%2));

if [ $partTime -eq $randomCheck ]
then
	empHrs=8;
	echo "Employee is Part Time."
fi

salary=$(( $empHrs*$empRatePerHrs ))
echo "Employee salary: " $salary;
