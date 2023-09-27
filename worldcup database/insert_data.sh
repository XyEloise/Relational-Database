#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games,teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT winner_goals opponent_goals
do 
  if [[ $WINNER != "winner" ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $WINNER_ID ]]
    then
      INSERT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT == "INSERT 0 1" ]]
      then
        echo insert $WINNER
      fi
    fi
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  fi

  if [[ $OPPONENT != "opponent" ]]
  then
    opponent_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    #echo opponent_id is $opponent_ID
    if [[ -z $opponent_ID ]]
    then
      INSERT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT == "INSERT 0 1" ]]
      then
        echo insert into $OPPONENT
      fi
    fi
    opponent_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  fi

  if [[ $YEAR != "year" && $ROUND != "round" && $winner_goals != "winner_goals" && $opponent_goals != "opponent_goals" ]]
  then 
    INSERT=$($PSQL "INSERT INTO games(winner_id,opponent_id,year,round,winner_goals,opponent_goals) VALUES($WINNER_ID,$opponent_ID,'$YEAR','$ROUND','$winner_goals','$opponent_goals')")
    if [[ $INSERT == 'INSERT 0 1' ]]
    then 
      echo insert rest into games 
    fi
  fi
done
