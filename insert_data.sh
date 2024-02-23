#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

run_query(){
  Q=$*
  if $PSQL "${Q}"; then
    return 0
  else
    return 1
  fi
}

while read p; do
  if echo $p | grep -qE "^[0-9]" ; then
    year=$(echo $p | awk -F',' '{print $1}');
    round=$(echo $p | awk -F',' '{print $2}');
    winner=$(echo $p | awk -F',' '{print $3}');
	opponent=$(echo $p | awk -F',' '{print $4}');
	winner_goals=$(echo $p | awk -F',' '{print $5}');
	opponent_goals=$(echo $p | awk -F',' '{print $6}');
  
    echo "Winner: $winner. Opponent: $opponent";
    # INSERT WINNER and OPPONENT, to get all unique teams, some teams may never lose.
    query="INSERT INTO teams(name) VALUES('$winner');"
    run_query ${query};
    
	query="INSERT INTO teams(name) VALUES('$opponent');"
    run_query ${query};
    
    query="INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$year', '$round',(SELECT team_id FROM teams WHERE name = '$winner'),(SELECT team_id FROM teams WHERE name = '$opponent'), '$winner_goals','$opponent_goals' )"
	run_query ${query};
  fi
done <games.csv