#!/bin/bash

user=$(whoami)
echo "Welcome $user"
if [ -e AccessLog.txt ];then
lineNumber=$(cat AccessLog.txt |wc -l)
lineNumber=$(($lineNumber+1))
echo "$lineNumber $user $(date)" >> AccessLog.txt
else
echo "1 $user $(date)" >> AccessLog.txt
fi

which python
if [ $? -eq 0 ];
then
echo "You have Python"
else
sudo yum install
fi 

git --version
if [ $? -eq 0 ];
then 
echo "You have Git"
else
sudo yum install Git
fi


if [ -e phone_book/phone_book.py  ];then
python3 phone_book/phone_book.py
else
git clone https://github.com/???????/phone_book.git
python3 phone_book/phone_book.py
fi
