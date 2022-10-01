#!/bin/bash

for i in u11 u22 u33 u44 u55
do
        if grep -q $i /etc/passwd
        then
                echo "$i istifadecisi vardir"
                echo "Silmek isteyirsinizmi? Yes/No"
                read cavab
                echo "Sizin cavabiniz $cavab oldu"
                case $cavab in
                    Yes)
                        userdel -r $i
                        echo $i istifadecisini sildiniz;;
                    No)
                        echo $i useri silmediniz;;
                    *)
                        echo "Yes/No secmeli idiniz";;
                esac
        else
            useradd $i;
            echo $i istifadecisi elave olundu;
        fi
done
exit 0
