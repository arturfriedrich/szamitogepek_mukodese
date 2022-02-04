#! /bin/bash
fib( ) {
    n=$1     # a függvény paramétertől várjuk, hogy hány elemet írassunk ki a sorozatból
    if [ $n -lt 2 ]; then
    echo $n     # ha az 'n<2', akkor az eredmény maga 'n'; látható a fenti mintából
    else
    ((--n))     # egyel csökkentem 'n' értékét; ún. dekrementálom
    a=$(fib $n)     # ő lesz a 'fib(n-1)'
    ((--n))     # megint egyel csökkentem 'n' értékét
    b=$(fib $n)     # ő lesz a 'fib(n-2'
    echo $((a+b))     # az eredmény 'fib (n-1)+fib (n-2)'
    fi
}
echo "Adjon meg egy számot: "
read szam;
for i in $(seq 0 $szam)     # ez a for ciklus másik fajta alkalmazása
do
out=$(fib $i)
echo $out
done
exit 0