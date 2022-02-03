#! /bin/bash
# Számológép program. A felhasználó menüből tud választani az alábbi műveletek közül
# 1- összeadás, 2- kivonás, 3- szorzás
echo "Adja meg az első számot: "
read a;
echo "Adja meg a második számot: "
read b;
echo "Válasszon az alábbi menüpontok közül: "
echo "1 - összeadás"
echo "2 - kivonás"
echo "3 - szorzás"
echo "egyéb - kilépés"
read opcio;
case $opcio in # szintaktika case valtozo in opciok ... esac
1)echo "Az összeg: " $(( a + b ));;  # megnyomjuk az 1-est, akkor összeadás
2)echo "A különbség: " $(( a - b ));;  # megnyomjuk a 2-est akkor kivon
3)echo "A szorzat: " $(( a * b ));;  # megnyomjuk a 3-ast, akkor szoroz
*)echo "Kilépés"  # megnyomunk bármi mást, akkor kilép
exit;;
esac  # a case struktúrát mindig esac zárja
exit 0
