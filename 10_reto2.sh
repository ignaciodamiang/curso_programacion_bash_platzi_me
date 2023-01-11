#!/usr/bin/env bash
# Gets personal info and then print it
# Carlos Velasquez - @crlosvelaquez

name=""
lastname=""
age=""
address=""
cellphone=""

echo "Type your data:"
read -p "What is your name? " name
read -p "What is your lastname? " lastname
read -p "How old are you? " age
read -p "Where do you live? " address
read -p "What is your cellphone? " cellphone

echo -e "\n"
echo "Your data: "
echo "Her/His name is $name $lastname"
echo "She/He is $age"
echo "She/He lives in $address"
echo "Her/His cellphone is $cellphone"