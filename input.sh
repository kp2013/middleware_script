#!/bin/bash


read -p "what is your name ? " NAME
read -p "Are you taking the class with utrains? " c

echo " your name is: $NAME and your answer $c the utrains class taking"

if [ $c = yes ] 
  then
   echo " Good job $NAME !! keep enjoying and change your life!!"
else
	echo "thats not good $NAME Please check the website immediately and enroll ( utrains.org)"

fi

# echo " your name is: $NAME and your answer $c the utrains class taking"
