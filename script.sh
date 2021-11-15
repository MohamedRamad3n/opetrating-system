#!/bin/bash

#task1
echo "please enter the number of seconds to convert"
read secs
echo "$((secs/3600))h :$((secs%3600/60))m :$((secs%60))s"

#task2
echo "1. Convert Celsius temperature into Fahrenheit"
	echo -n "Enter temperature (F) : "
	read tf
	# formula Tc=(5/9)*(Tf-32) 
	tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
	echo "$tf = $tc"
	
#task3
echo "enter the basic salary:"
read bsal
if [ $bsal -gt 2000 ]
then
gsal=$((bsal-(bsal/100)*15))
echo "The gross salary : $gsal"
elif [ $bsal -gt 1000 ] && [ $bsal -lt 2000 ]
then
gsal=$((bsal-(bsal/100)*10))
echo "The gross salary : $gsal"
else
gsal=$bsal
echo "The gross salary : $gsal"
fi

#task4
echo "Input number"
read no
echo "Input power" 
read power 
counter=0
ans=1
while [ $power -ne $counter ] 
do
ans=`echo $ans \* $no | bc` 
counter=`echo $counter + 1 | bc`
done
echo "$no power of $power is $ans"

#task5
echo "please enter number"
read num
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."

#task7
echo enter n
read n
num=0
while [ $n -gt 0 ]
do
num=$(expr $num \* 10)
k=$(expr $n % 10)
num=$(expr $num + $k)
n=$(expr $n / 10)
done
echo "number is $num"
sum=0
while [ $n -gt 0 ]
do
    mod=$((num % 10))    
    sum=$((sum + mod))   
    n=$((num / 10))    
done
echo $sum

