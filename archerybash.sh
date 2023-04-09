#!/bin/sh

score() {
    sum=0
    tens=0
    cnt=0
    thingy10=0
    if [ ${#1} -ne 30 ]; then
        echo "Incorrect amount of points"
        exit 1
    fi
    echo ""
    echo "┌──────────────┐"
    for (( i=0; i<${#1}; i++ )); do
        c=${1:$i:1}
        if [[ $c =~ ^[0-9]+$ ]]; then
            if [ $cnt -eq 15 ]; then
                printf " 10-meter | %2d\n" $sum
                thingy10=$(expr $thingy10 + $sum)
            fi
            n=$c
            sum=$(expr $sum + $n)
            cnt=$(expr $cnt + 1)
        else
            if [ $cnt -eq 15 ]; then
                printf " 10-meter | %2d\n" $sum
                thingy10=$(expr $thingy10 + $sum)
            fi
            n=10
            sum=$(expr $sum + $n)
            tens=$(expr $tens + 1)
            cnt=$(expr $cnt + 1)
        fi
    done
    thingy15=$(expr $sum - $thingy10)
    printf " 15-meter | %2d\n Total | %2d\n Tens | %2d\n└──────────────┘\n" $thingy15 $sum $tens
}

if [ $# -eq 0 ]; then
read -p "Enter points in one string, 10 being any non-number: " input
score $input
elif [ $# -eq 1 ]; then
input=$1
score $input
else
echo "Is you dumb?"
fi
