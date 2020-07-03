#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHour=20;
randomCheck=$(( RANDOM%3 ))
case $randomCheck in
	$isFullTime)
			employeeHour=8
			;;
	$isPartTime)
			employeeHour=4
			;;
		  *)
			employeeHour=0
			;;
esac
salary=$(( $employeeHour * $empRatePerHour ))
echo Salary: $salary
