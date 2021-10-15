#! /bin/bash
function f1 { # definiáljuk az f1 függvényt a function kulcsszóval
echo "Volt függvényhívás!"
}
if [ $# -ne 1 ]; then  #azt teszteli, hogy adtunk-e meg parancssori paramétert
# a $# változó tárolja a megadott paraméterek számát
echo "Hibás használat! Használjon paramétert!"  # ha nem adtunk meg paramétert, akkor
                                                # jelezzük a hibát
echo "A helyes használat: $0 < 1/0> "  # a dollár 0 változó a szkript nevét tárolja
else
if [ $1 = 0 ]; then  # ha $1 az első paraméter értékét tárolja
                     # akárhány paraméterünk lehet, ezek számozása $1, $2,..., $n
                     # ha a paraméter = 0, akkor nem volt függvényhívás
echo "Nem volt függvényhívás"
elif [ $1 = 1 ]; then  # ha a paraméter = 1, akkor meghívjuk a függvényünket
f1  # ez a függvényhívás
else
echo "Hibás paraméter"  # minden más érték hiba
fi
fi
exit 0 
