
# curl -X GET \
# 	  -H "Content-Type: application/json" \
# 	  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
# 	  https://api.taiga.io/api/v1/userstories 2>/dev/null

require 'json'

# Relies on env vars and ruby parses JSON. 
def indexUS 
	us_list_json = %x(curl -X GET \
		  -H "Content-Type: application/json" \
		  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
		  https://api.taiga.io/api/v1/userstories?project="${TAIGA_PROJECT_ID}" 2>/dev/null)

	us_list = JSON.parse us_list_json

	us_list.each do |us|
		puts "#{us['ref']}: #{us['subject']}"
	end
end

# Check to see if auth has been run yet by checking lengths of env strings.
taiga_auth_token = %x( echo "$TAIGA_AUTH_TOKEN" )
taiga_project_id = %x( echo "$TAIGA_PROJECT_ID" )
taiga_auth_token_exists = (taiga_auth_token == "\n" ? false : true)
taiga_project_id_exists = (taiga_project_id == "\n" ? false : true)
got_auth = taiga_auth_token_exists && taiga_project_id_exists

# If auth isn't set, set it.
if got_auth
	puts "Got auth already. Proceeding."
	indexUS()
else 
	puts "Please run `taigaAuth` first."
end
