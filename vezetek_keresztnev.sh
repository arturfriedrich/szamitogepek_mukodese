#! /bin/bash
echo "Hello $USER"
echo -n "Adja meg a vezetéknevet: "     # a '-n' kikapcsolja az echo sorvégi sortörését
read vnev;     # beolvassuk az értéket a "vnev" shell változóba, a sor végén kötelezően pontosvessző! Deklaráláskor nem kell a '$' jel.
echo -n "Adja meg a keresztnevet: "
read knev;
echo "Köszönöm kedves $vnev $knev. Viszontlátásra."     # a változók meghívásakor már kell a '$' jel.
exit 0