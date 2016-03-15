#!/bin/bash

# https://taigaio.github.io/taiga-doc/dist/api.html
# Request username and password for connecting to Taiga
# read -p "Username or email: " TAIGA_USERNAME
# read -s -p "Password: " TAIGA_PASSWORD

TAIGA_USERNAME="$TAIGA_USERNAME"
TAIGA_PASSWORD="$TAIGA_PASSWORD"

# Get TAIGA_AUTH_TOKEN
USER_AUTH_DETAIL=$( curl -X POST \
  -H "Content-Type: application/json" \
  -d '{
          "type": "normal",
          "username": "'${TAIGA_USERNAME}'",
          "password": "'${TAIGA_PASSWORD}'"
      }' \
  https://api.taiga.io/api/v1/auth 2>/dev/null )

AUTH_TOKEN=$( echo ${USER_AUTH_DETAIL} | jq -r '.auth_token' )

# Exit if TAIGA_AUTH_TOKEN is not available
if [ -z ${AUTH_TOKEN} ]; then
    echo "Error: Incorrect username and/or password supplied"
    exit 1
else  
    # Reset if there ever was one. 
    unset TAIGA_AUTH_TOKEN
    # Set for shell. (Access by using . or source instead of bash.)
    export TAIGA_AUTH_TOKEN="${AUTH_TOKEN}"
    echo "${AUTH_TOKEN}"
fi


PROJECT_RESOLVER=$( curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
  https://api.taiga.io/api/v1/resolver?project="$TAIGA_PROJECT_SLUG" 2>/dev/null)

PROJECT_ID=$( echo ${PROJECT_RESOLVER} | jq -r '.project' )

if [ -z ${PROJECT_ID} ]; then
  echo "Unable to resolve project id."
  exit 1
else 
  export TAIGA_PROJECT_ID="${PROJECT_ID}"
  echo "${TAIGA_PROJECT_ID}"
fi

# Proceed to use API calls as desired
# ...

# ... OK then. 

