# curl -X GET \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer ${AUTH_TOKEN}" \
#   https://api.taiga.io/api/v1/userstories

if [ -z ${TAIGA_AUTH_TOKEN} ]; then
	bash "$HOME/.dotfiles/taiga/auth.sh"
# else 
# 	echo "Already have auth token ${TAIGA_AUTH_TOKEN}"
fi

US_LIST=$( curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
  https://api.taiga.io/api/v1/userstories 2>/dev/null)

TAIGA_US_LIST=$( echo ${US_LIST} )