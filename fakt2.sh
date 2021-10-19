#! /bin/bash

fakt() {
local num=$1
if [ $num = 0 ]; then
ret=1
else
temp=$((num-1))
temp2=$(fakt $temp)  # bevezettünk egy temp2 változót, melyhez hozzárendeljünk a
                     # a fakt $temp visszatérési értékét, tehát nem a $?-t használtuk
ret=$((num*temp2))  # temp2-vel szorozzuk be num-ot
fi
echo $ret  # return helyett echo
}

echo "Adjon meg egy számot: "
read szam;
echo "A(z) $szam faktoriálisa: $(fakt szam)"  # közvetlenül a fakt szam-ot íratjuk ki
exit 0
