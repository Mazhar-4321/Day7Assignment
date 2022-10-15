declare -a array
read n
k=0
for((i=1;i<=$((n/2));i=$((i+1))))
do
if [ $((n%i)) -eq 0 ]
then
array[$k]=$i
k=$((k+1))
fi
done
array[$k]=$n
echo ${array[@]}
