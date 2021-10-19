#! /bin/bash

fact() {
local num=$1  # a num megkapja a függvény paraméterét a $1-et
if [ $num = 0 ]; then  # értékösszehasonlítás = jellel nem -eq-val
ret=1  # a 0 faktoriálisa 1, nincs mit számolni

else 
temp=$((num-1))

fact $temp  # itt a rekurzív függvényhívás
ret=$((num*$?))  # a visszatérési érték num*$? ahol a $? az utoljára pufferelt
                 # értéket tartalmazza, korlátja, hogy csak 256 értéket kezel
fi
return $ret
}

echo "Adjon meg egy számot: "
read szam;

fact $szam
echo "A(z) $szam faktorialisa $?"  # ez a megoldás csak fakt 5-ig működik, mivel a
                                   # 5!=120, a 6!=720 kellene, hogy legyen, ehelyett
                                   # 208-at kapunk, ez a többszörös kulcsolás miatt van
                                   # 256+256=512  720-512=208

exit 0
