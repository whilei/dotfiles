class Taiga

	module Auth

		# Auth constants.
		TAIGA_AUTH_TOKEN = %x( echo "$TAIGA_AUTH_TOKEN" )
		TAIGA_PROJECT_ID = %x( echo "$TAIGA_PROJECT_ID" )


		def Auth.check_auth 
			taiga_auth_token_exists = (TAIGA_AUTH_TOKEN == "\n" ? false : true)
			taiga_project_id_exists = (TAIGA_PROJECT_ID == "\n" ? false : true)
			got_auth = taiga_auth_token_exists && taiga_project_id_exists
			if !got_auth
				puts "Please run `taigaAuth` to authenticate first."
				return false
			else 
				return true
			end
		end

	end

end


# Check working.
# puts Taiga::Auth.has_auth