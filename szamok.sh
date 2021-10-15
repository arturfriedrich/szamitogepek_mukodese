#! /bin/bash
echo "Olvasson be egy 10-nél kisebb számot!"
read szam;
while (( $szam > 9 ))   # while ciklus do és done kulcsszavakkal nyitjuk és zárjuk
do
echo -m "Hibás input, adja meg újra: "
read szam;
done
echo "A megadott szám: $szam"
exit 0
