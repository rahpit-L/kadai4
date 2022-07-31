#!/bin/bash

a="a"
b=$2
extra=$3

# arg check(natural number)
if [ -z "$a" ] || ! [[ "$a" =~ ^[1-9][0-9]*$ ]]; then
    echo "please input natural number as arg 1. ex) ./gcf.sh [natural number] [natural number]"
    exit 1
fi

if [ -z "$b" ] || ! [[ "$b" =~ ^[1-9][0-9]*$ ]]; then
    echo "please input natural number as arg 2. ex) ./gcf.sh [natural number] [natural number]"
    exit 1
fi

if [ -n "$extra" ]; then
    echo "please input only 2 natural number. ex) ./gcf.sh [natural number] [natural number]"
    exit 1
fi

# start calculation
c=$(($a % $b))
while [ $c -ne 0 ]; do
    tmp=$c
    c=$(($b % $c))
    b=$tmp
done

echo $b

