#!/bin/bash

if [ -z ${TAIGA_AUTH_TOKEN} ]; then
	bash "$HOME"/.dotfiles/taiga/auth.sh
# else 
# 	echo "Already have auth token: ${TAIGA_AUTH_TOKEN}"
fi

PROJECT_RESOLVER=$( curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
  https://api.taiga.io/api/v1/resolver?project="$TAIGA_PROJECT_RS" 2>/dev/null)

TAIGA_PROJECT_ID=$( echo ${PROJECT_RESOLVER} | jq -r '.project' )

export TAIGA_PROJECT_ID
echo "${TAIGA_PROJECT_ID}"

# if [ -z ${TAIGA_PROJECT_ID} ]; then
# 	echo "Unable to resolve project id."
# 	exit 1
# else 
# 	# export TAIGA_PROJECT_ID
# 	echo "${TAIGA_PROJECT_ID}"
# fi


