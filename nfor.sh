#! /bin/bash
echo "Megadott 'n' számog egyesével kiírja 0-tól számokat"
echo -n "Adjon meg egy számot: "
read n;
for (( i=0; i<=n; i++ ))   # másik lehetőség : for i in $(seq 0 n)
do   # hasonlóan itt is do és done-val kezdjük és zárjuk
echo $i
done
exit 0
