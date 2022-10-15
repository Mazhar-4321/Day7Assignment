read num1
read num2
read num3
if [[ $(($num1+$num2+$num3)) -eq 0 ]]
then
echo "true"
else
echo "false"
fi

