#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
SERVICE_ID=$($PSQL "SELECT service_id,name FROM services")

SERVICE_MENU(){
echo "$SERVICE_ID" | while read ID BAR NAME
do
  echo "$ID) $NAME"
done
}

MAIN_MENU(){
  echo "Please choose a service id today"
  read SERVICE_ID_SELECTED
  
  SERVICE_NAME_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  if [[ -z $SERVICE_NAME_SELECTED ]]
  then 
    SERVICE_MENU
    MAIN_MENU
  else
    APPOINTMENT $SERVICE_ID_SELECTED "$SERVICE_NAME_SELECTED"
  fi
  
}

APPOINTMENT(){
  SERVICE_ID_SELECTED=$1
  echo $2
  echo "what's your phone number"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  if [[ -z $CUSTOMER_NAME ]]
  then 
    echo "what's your name"
    read CUSTOMER_NAME
    INSERTED_CUSTOMER=$($PSQL "INSERT INTO customers(phone,name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
  fi

  echo "what time would you like for the appointment"
  read SERVICE_TIME
  
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  INSERTED_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
  if  [[ $INSERTED_APPOINTMENT == 'INSERT 0 1' ]]
  then
    echo "I have put you down for a $2 at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

SERVICE_MENU
MAIN_MENU
