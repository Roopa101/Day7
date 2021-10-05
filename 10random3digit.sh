for (( i=0; i<10; i++ ))
do
        random[$i]=$(( RANDOM % (1000-100) + 100 ))
done
echo ${random[@]}
largest=${random[0]}
secondLarge=${randomN[0]}

for (( i=0; i<=10; i++ ))
do
        if [[ ${random[$i]} -ge $largest ]]
        then
        secondLarge=$largest
        largest=${random[$i]}
        elif [[ ${random[$i]} -gt $secondLarge && ${random[$i]} -ne $largest ]]
        then
                secondLarge=${random[$i]}
        fi
done
echo "2nd Large in array" $secondLarge

smallest=${random[0]}
secondSmall=${randomN[0]}

for (( j=0; j<=10; j++ ))
do
   if [[ ${random[$j]} -le $smallest ]]
   then
       secondSmall=$smallest
       smallest=${random[$j]}
   elif [[ ${random[$j]} -lt $secondSmall && ${random[$j]} -ne $smallest ]]
   then
    secondSmall=${random[$j]}
fi
done
echo "2nd Small in array" $secondSmall

