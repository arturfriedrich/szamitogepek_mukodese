#! /bin/bash
echo -n "Adjon meg egy számot: "
read szam;
if [ $szam -lt 5 ]; then     # az -lt jelentése kisebb (lower than)
echo "A szám kisebb mint 5."
elif [ $szam -gt 5 ]; then     # a -gt jelentése nagyobb (greater than)
echo "A szám nagyobb mint 5."
else
echo "A szám pontosan 5."
fi     # az if-et mindig fi-vel zárjuk
exit 0
# a további logikai operátorok:
#     -le: kisebb vagy egyenlő
#     -ge: nagyobb vagy egyenlő
#     -eq: egyenlő
# másik szintaktika, ahogyan leírható a feltétel: if ((feltétel)); then ... fi