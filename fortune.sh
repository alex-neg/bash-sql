#!/bin/bash

# Program to tell a persons fortune

# Title
echo -e "\n~~ Fortune Teller ~~\n"

# Array o responses
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

# Random var btw 0 and 5
N=$(( RANDOM % 6 ))

# Function
GET_FORTUNE() {
  if [[ ! $1 ]]
    then 
      echo "Ask a yes or no question:"
    else
      echo "Try again. Make sure it ends with a question mark:"
  fi
  read QUESTION
}  

# Function call
GET_FORTUNE

# Until loop
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

# Print the response
echo -e "\n${RESPONSES[$N]}"


: ' 
  until [[ CONDITION ]]
do
  STATEMENTS
done
'

: '
  if [[ CONDITION ]]
then
  STATEMENTS
fi

' 