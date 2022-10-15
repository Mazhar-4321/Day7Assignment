##! /bin/bash -x
##  Problem 1
declare -a array
array[${#array[@]}]=$(($((RANDOM%100))+100))
fl=${array[0]}
sl=$fl
fs=$fl
ss=$fl
for((i=1;i<10;i=$((i+1))))
do
array[$i]=$(($((RANDOM%100))+100))
if [ ${array[$i]} -gt $fl ]
then
sl=$fl
fl=${array[$i]}
elif  [ ${array[$i]} -gt $sl ]
then
sl=${array[$i]}
fi
if [ ${array[$i]} -lt $fs ]
then
ss=$fs
fs=${array[$i]}
elif  [ ${array[$i]} -lt $ss ]
then 
ss=${array[$i]}
fi
done

echo "Array Elements :${array[@]}"
echo "Second Largest:$sl"
echo "Second Smallest:$ss"
## Problem 2
minIndex=0
minValue=${array[0]}
 
for((i=0;i<10;i=$((i+1))))
do
minIndex=$i
minValue=${array[$i]}
for((j=$((i+1));j<10;j=$((j+1))))
do
if [ $minValue -gt ${array[$j]} ]
then
minValue=${array[$j]}
minIndex=$j
fi
done
temp=${array[$i]}
array[$i]=${array[$minIndex]}
array[$minIndex]=$temp
done
echo "Sorted Array :${array[@]}"
