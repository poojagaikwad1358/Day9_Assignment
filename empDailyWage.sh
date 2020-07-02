#!/bin/bash -x

ratePerHrs=20
fullDayHrs=8

employeeDailyWage=$(( $ratePerHrs * $fullDayHrs ))
echo $employeeDailyWage

