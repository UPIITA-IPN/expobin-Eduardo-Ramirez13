#!/bin/bash

read a b m

resultado=1
a=$((a % m))

while [ $b -gt 0 ]
do
    if [ $((b % 2)) -eq 1 ]; then
        resultado=$(( (resultado * a) % m ))
    fi
    a=$(( (a * a) % m ))
    b=$((b / 2))
done

echo $resultado
