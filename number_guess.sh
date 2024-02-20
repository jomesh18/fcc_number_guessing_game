#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read NAME
QUERY_NAME_RES=$($PSQL "select best_try, games_played from users where user_name='$NAME'")
if [[ -z "$QUERY_NAME_RES" ]]
then
  INS=$($PSQL "insert into users (user_name) values ('$NAME')")
  echo "Welcome, "$NAME"! It looks like this is your first time here."
else
  echo "$QUERY_NAME_RES" | while IFS='|' read BEST GAMES_PLAYED
  do
    echo "Welcome back, "$NAME"! You have played $GAMES_PLAYED games, and your best game took $BEST guesses."
  done
fi
RAND=$(($RANDOM%1000+1))
COUNT=0
echo "Guess the secret number between 1 and 1000:"
read GUESS
while [ "$RAND" != "$GUESS" ]
do
  if [[ "$GUESS" =~ ^[0-9]+$ ]]
  then
    COUNT=$((COUNT+1))
    if [[ "$GUESS" -gt "$RAND" ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:" 
    fi 
  else
    echo "That is not an integer, guess again:"
  fi
  read GUESS
done
COUNT=$((COUNT+1))
BEST=$($PSQL "select best_try from users where user_name='$NAME'")
if [[ $COUNT -lt $BEST ]]
then
   BEST=$COUNT
fi
UPD=$($PSQL "update users set games_played=games_played+1, best_try=$BEST where user_name='$NAME'")
echo "You guessed it in $COUNT tries. The secret number was $RAND. Nice job!"