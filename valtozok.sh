#! /bin/bash
f2(){  # most function kulcsszó nélkül hozzuk létre a függvényt 
i=10  # ő a globális változó
local j=20  # ő a lokális változó, mindig a local kulcsszóval hpzunk létre
            # lokális változót

echo "i értéke a függvényen belül: $i"
echo "j értéke a függvényen belül: $j"  # kiíratjuk a változók értékeit a függvényen belül
}

echo "i értéke a függvényen kívül: $i"
echo "j értéke a függvényen kívül: $j"  # itt még nem lesz értéke egyik változónak sem
                                        # mivel még nem történt inicializálás, vagyis
                                        # még nem hívtuk meg a függvényt

f2  # meghívtuk a függvényt, tehát a változók is inicializálódnak

echo "i értéke a függvényen kívül: $i"
echo "j értéke a függvényen kívül: $j"  # ismét kiírjuk, de csak a globális változó
                                        # értéke fg látszódni a függvényen kívül

exit 0
