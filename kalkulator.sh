#! /bin/bash
echo "Egyszerű kalkulátor program. Adjon meg két számot!"
echo -n "Első szám: "
read a;
echo -n "Második szám: "
read b;
# itt most két lehetőség van: 1. bevezetünk új változókat és eredményeket, vagy 2. egyből kiíratjuk az eredményt
# az 1. megoldás:
ossz=$((a+b))
kul=$((a-b))
szor=$((a*b))
echo $ossz
echo $kul
echo $szor
# a 2. megoldás
echo $((a+b))
echo $((a-b))
echo $((a*b))
exit 0