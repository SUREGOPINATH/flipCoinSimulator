#!/bin/bash -x

echo "Welcome to flip coin simulator"

#variables
heads=0
tails=1
headCount=0
tailCount=0
count=0

function tossChecker() {
        toss=$(($RANDOM%2))
        echo $toss
}

function results() {
        if [ $headCount -gt $tailCount ]
        then
                echo "heads won "
        else
                echo "tails won"
        fi
}

while [ $count -ne 5 ]
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
        count=$(($count+1))
done
results
