#! /bin/bash
f2() {     # most function kulcsszó nélkül hozzuk létre a függvényt
    i=10     # ő a globális változó
    local j=20     # lokális változót a local kulcsszóval hozunk létre

    echo "i értéke a függvényen belül: $i"
    echo "j értéke a függvényen belül: $j"     # kiíratjuk a változók értékeit a függvényen belül
}

echo "i értéke a függvényen kívül: $i"
echo "j értéke a függvényen kívül: $j"     # itt még nem lesz értéke egyik változónak sem, mivel nem történt meg az inicializálás, vagyis még nem hívtuk meg a függvényt

f2     # most meghívjuk a függvényt, tehát a változók is inicializálódnak

echo "i értéke a függvényen kívül: $i"
echo "j értéke a függvényen kívül: $j"     # ismét kiíratjuk, de csak a globális változó értéke látszódik a függvényen kívül
exit 0