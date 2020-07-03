#!/bin/bash -x

partTime=1
fullTime=2
totalSalary=0;
empRatePerHrs=20;
numberOfWorkingDays=20;

for(( Day=1; Day<=$numberOfWorkingDays; Day++ ))
do
	randomCheck=$(($RANDOM%3));
	case $randomCheck in
		$fullTime)
				empHrs=8
				;;
		$partTime)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
	esac

salary=$(($empHrs*$empRatePerHrs));
totalSalary=$(($totalSalary+$salary))

done
echo "Employee monthly salary: " $totalSalary;

