#!/bin/bash -x

partTime=1
fullTime=2
totalempHrs=0;
totalWorkingDays=0;
hrsInMonth=100;
empRatePerHrs=20;
numberOfWorkingDays=20;

function getWorking() {

	case $randomCheck in
		$fullTime)
			empHrs=8;
                        ;;
		$partTime)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
	esac
	echo $empHrs;
}
while [[ $totalempHrs -lt $hrsInMonth &&
	 $totalWorkingDays -lt $numberOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3));
	empHrs="$( getWorking $randomCheck )"
	totalempHrs=$(($totalempHrs+$empHrs));
done
totalSalary=$(($totalempHrs*$empRatePerHrs));
echo "Employee Hours: "$totalempHrs
echo " Salary: "$totalSalary
