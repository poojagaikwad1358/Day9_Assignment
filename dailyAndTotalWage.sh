#!/bin/bash -x

partTime=1
fullTime=2
totalempHrs=0;
totalWorkingDays=0;
hrsInMonth=100;
empRatePerHrs=20;
numberOfWorkingDays=20;

function getWorkingDays() {

	case $1 in
		$fullTime)
			empHrs=8;
                        ;;
		$prtTime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs;
}

function calculateDailyWage() {
	local empHrs=$1
	wage=$(($empHrs*$empRatePerHrs))
	echo $wage
}

while [[ $totalempHrs -lt $hrsInMonth && $totalWorkingDays -lt $numberOfWorkingDays ]]
do
	((totalWorkingDays++))
	empHrs="$( getWorkingDays $((RANDOM%3)) )"
        totalempHrs=$(($totalempHrs+$empHrs))
        empDailyWage["$totalworkingdays"]="$( calculateDailyWage $empHrs )"
done

totalSalary="$( calculateDailyWage $totalempHrs )"
echo "Daily Wage: " ${empDailyWage[@]}
echo "Total wage: " $totalSalary
