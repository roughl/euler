#!/bin/bash
x=$(cat roman.txt|wc -c)
y=$(cat roman.txt|sed "s/DCCCC/CM/"| sed "s/CCCC/CD/" | sed "s/LXXXX/XC/"| sed "s/XXXX/XL/"|sed "s/VIIII/IX/"|sed "s/IIII/IV/"|wc -c)

echo $x - $y = $((x-y))
