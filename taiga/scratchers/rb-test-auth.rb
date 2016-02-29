taiga_auth_token = %x( echo "$TAIGA_AUTH_TOKEN" )
taiga_project_id = %x( echo "$TAIGA_PROJECT_ID" )
puts taiga_auth_token
puts taiga_project_id

taiga_auth_token_exists = !taiga_auth_token.nil?
taiga_project_id_exists = !taiga_project_id.nil?

got_auth = taiga_auth_token_exists && taiga_project_id_exists
puts got_auth

get_auth = system( 'source "$HOME"/.dotfiles/taiga/auth.sh' )
puts get_auth

taiga_auth_token = %x( echo "$TAIGA_AUTH_TOKEN" )
taiga_project_id = %x( echo "$TAIGA_PROJECT_ID" )
puts taiga_auth_token
puts taiga_project_id