if [ -z ${TAIGA_AUTH_TOKEN} ]; then
	bash "$HOME/.dotfiles/taiga/auth.sh"
else 
	echo "Already have auth token ${TAIGA_AUTH_TOKEN}"
fi

if [ "$1" -gt 0 ]; then
	US_REF="$1"
else 
	echo "You've got argue a valid userstory ref."
	exit 1
fi

USERSTORY_RESOLVER=$( curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
  https://api.taiga.io/api/v1/resolver?project="$TAIGA_PROJECT_RS"\&us="$US_REF" 2>/dev/null)

TAIGA_US_ID=$( echo ${USERSTORY_RESOLVER} | jq -r '.us')

if [ -z ${TAIGA_US_ID} ]; then
	echo "Unable to resolve userstory id."
	exit 1
else 
	echo "userstory id is ${TAIGA_US_ID}"
	export TAIGA_US_ID
fi

unset US_REF