#!/bin/bash

# our program goal is to install mysql

# this function should validate the previuos command and inform user it is sccess or failure
VALIDATE(){
    #$1 --> it will received the argument 1
    if [ $1 -ne 0 ]
    then 
        echo "$2 ... FAILURE"
        exit 1 
    else 
        echo "$2 ... SUCCESS"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
# else
#     echo "INFO:: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

VALIDATE $? "Installing MYSQL"

yum install postfix -y

VALIDATE $? "Installing Pstfix"