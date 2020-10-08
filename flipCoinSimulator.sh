#!/bin/bash -x

echo "Welcome to flip coin simulator"

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

tossChecker
results
