#!/bin/bash -x

echo "Welcome to flip coin simulator"

function tossChecker() {
        toss=$(($RANDOM%2))
        echo $toss
}

function results() {

	if [ $headCount -eq $tailCount ] ##modifying by adding tie senerio
	then
        	echo "Tie"
		flipCoinMain;
	elif [ $headCount -gt $tailCount ]
	then
		difference=$(($headCount-$tailCount))
        	echo "Heads Won by $difference"
	else
		difference=$(($tailCount-$headCount))
        	echo "Tails Won by $difference"
	fi

}

function flipCoinMain() {
	heads=0
	tails=1
	headCount=0
	tailCount=0

	while [[ $tailCount -le 21 && $headCount -le 21 ]]
	do
        	toss="$(tossChecker)"
	        case "$toss" in
	                0)
        	                headCount=$(($headCount+1))
	                        ;;
        	        1)
                	        tailCount=$(($tailCount+1))
                        	;;
	        esac
	done
	results
}
flipCoinMain;
