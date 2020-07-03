#!/bin/bash -x

partTime=1
fullTime=2
totalHrs=0;
totalWorkingDays=0;
hrsInMonth=100;
empRatePerHrs=20;
numberOfWorkingDays=20;

while [[ $totalHrs -lt $hrsInMonth &&
	 $totalWorkingDays -lt $numberOfWorkingDays ]]
do
	((totalWorkingDays++))
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
		totalHrs=$(($totalHrs+$empHrs));
done
totalSalary=$(($totalHrs*$empRatePerHrs));
echo "Employee Work Hour: "$totalHrs
echo "Employee Salary: "$totalSalary
