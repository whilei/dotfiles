
# curl -X GET \
# 	  -H "Content-Type: application/json" \
# 	  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
# 	  https://api.taiga.io/api/v1/userstories 2>/dev/null

require 'json'


# %x(bash "$HOME/.dotfiles/taiga/resolve-project.sh")
# `bash /Users/ia/.dotfiles/taiga/auth.sh`

taiga_auth_token = %x( echo "$TAIGA_AUTH_TOKEN" )
taiga_project_id = %x( echo "$TAIGA_PROJECT_ID" )

if ( taiga_auth_token.length < 20 || taiga_project_id.length < 5 )
	puts "Please authenticate first. run `taigaAuth`. "
	return 
else 
	puts "taiga_auth_token: #{taiga_auth_token}"
	puts "taiga_project_id: #{taiga_project_id}"
end

stringer = "https://api.taiga.io/api/v1/userstories?project=#{taiga_project_id}"

us_list_json = %x(curl -X GET \
	  -H "Content-Type: application/json" \
	  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
	  https://api.taiga.io/api/v1/userstories?project="${TAIGA_PROJECT_ID}" 2>/dev/null)

us_list = JSON.parse us_list_json

us_list.each do |us|
	puts "#{us['ref']}: #{us['subject']}"
end