#!/bin/bash

# curl -X GET \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
#   https://api.taiga.io/api/v1/resolver?project="$TAIGA_PROJECT_RS"\&task="$1"

if [ -z ${TAIGA_AUTH_TOKEN} ]; then
	bash "$HOME/.dotfiles/taiga/auth.sh"
else 
	echo "Already have auth token ${TAIGA_AUTH_TOKEN}"
fi

if [ "$1" -gt 0 ]; then
	TASK_REF="$1"
else 
	echo "You've got argue a valid task ref."
	exit 1
fi

TASK_RESOLVER=$( curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
  https://api.taiga.io/api/v1/resolver?project="$TAIGA_PROJECT_RS"\&task="$TASK_REF" 2>/dev/null)

TAIGA_TASK_ID=$( echo ${TASK_RESOLVER} | jq -r '.task')

if [ -z ${TAIGA_TASK_ID} ]; then
	echo "Unable to resolve task id."
	exit 1
else 
  if [ "$TAIGA_TASK_ID" -gt 0 ]; then
  	echo "task id is ${TAIGA_TASK_ID}"
  	export TAIGA_TASK_ID
  else 
    echo "Couldn't find a task for ref $TASK_REF."
  fi
fi

unset TASK_REF