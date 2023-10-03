#!/bin/bash
#PSQL="psql --username=freecodecamp --dbname=number_guess_db -t -c"
PSQL="psql --username=freecodecamp --dbname=number_guess_db -Atc"

input_number(){
  #echo "Guess the secret number between 1 and 1000:"
  read NUMBER
  while [[ ! $NUMBER =~ ^[0-9]+$ ]]
  do 
    number_of_guesses=$(($number_of_guesses+1))
    #echo number_of_guesses is $number_of_guesses
    echo "That is not an integer, guess again:"
    read NUMBER
  done
}

echo "Enter your username:"
read NAME
while ! [[ $USERNAME =~ ^[A-Za-z0-9]{0,22}$ ]]
do
  echo "Enter your username:"
  read NAME
done

ID=$($PSQL "SELECT id FROM info WHERE name='$NAME'")
if [[ $ID ]]
then
  games_played=$($PSQL "SELECT games_played FROM info WHERE name='$NAME'")
  best_game=$($PSQL "SELECT best_game FROM info WHERE name='$NAME'")
  echo -e "Welcome back, $NAME! You have played $games_played games, and your best game took $best_game guesses."
  echo "Guess the secret number between 1 and 1000:"
else
  echo -e "Welcome, $NAME! It looks like this is your first time here."
  echo "Guess the secret number between 1 and 1000:"
  NEW_INSERT=$($PSQL "INSERT INTO info(name,games_played) VALUES('$NAME',0)")
  games_played=0
  best_game=0
fi

secret_number=$(( RANDOM%999+1 ))
#echo secret_number=$secret_number
number_of_guesses=0
input_number
while [[ $secret_number != $NUMBER ]]
do 
  if [[ $secret_number > $NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
  number_of_guesses=$(($number_of_guesses+1))
  #echo number_of_guesses is $number_of_guesses
  input_number
done

if [[ $secret_number == $NUMBER ]]
then
  number_of_guesses=$(($number_of_guesses+1))
  echo -e "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
  UPDATE_INSERT=$($PSQL "UPDATE info SET games_played=$(($games_played+1))")
  #echo number_of_guesses is $number_of_guesses
  if [[ $best_game > $number_of_guesses || $best_game == 0 ]]
  then
    UPDATE_INSERT=$($PSQL "UPDATE info SET best_game=$number_of_guesses")
  fi
fi

