require 'json'

class Userstory < Taiga

	# def Userstory.test 
	# 	puts "Doing stuff requiring auth!" if Taiga::Auth.check_auth
	# end
	 
	############################################
	## Define methods. 
	############################################

	def Userstory.resolve_us_id ref
			us_id_json = %x(curl -X GET \
			  -H "Content-Type: application/json" \
			  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
			  https://api.taiga.io/api/v1/resolver?project="${TAIGA_PROJECT_SLUG}"\\&us=#{ref} 2>/dev/null)

			us_id_parsed = JSON.parse us_id_json
			# puts us_id_parsed["project"] # test
			# puts us_id_parsed["us"] # test
			# Get project
			us_id = us_id_parsed["us"]
			project_id = us_id_parsed["project"]
			hash = {
				us: us_id,
				project: project_id
			}
			hash
	end
	
	def Userstory.index exclude_closed

			if !exclude_closed
				status_string = "" 
				puts "Show including closed."
			else
				status_string = "\\&status__is_closed=false"
				puts "Not showing closed. Use -a to show all." 
			end

			us_list_json = %x(curl -X GET \
				  -H "Content-Type: application/json" \
				  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
				  https://api.taiga.io/api/v1/userstories?project="${TAIGA_PROJECT_ID}"#{status_string} 2>/dev/null)

			us_list = JSON.parse us_list_json

			us_list.each do |us|
				puts "#{us['ref']}: (#{us['status_extra_info']['name']}) #{us['subject']}"
			end

	end

end


class Task < Taiga

	def Task.index ref, exclude_closed

		# Handle exclude_closed.
		status_string = exclude_closed ? "\\&status__is_closed=false" : ""
		print_statuses_shown = exclude_closed ? "Not showing closed" : "Including closed."
		puts print_statuses_shown
		
		# Handle ref or no. 
		if ref
			puts "Getting tasks for us ref \##{ref}"
			us_id = Userstory.resolve_us_id(ref)[:us]
			us_ref_string = "user_story=#{us_id}"
		else 
			puts "Getting all tasks. Use -r to specify userstory ref."
			project_id = Userstory.resolve_us_id(ref)[:project]
			us_ref_string = "project=#{project_id}"
		end
		
		userstory_tasks = %x(curl -X GET \
		  -H "Content-Type: application/json" \
		  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
		  https://api.taiga.io/api/v1/tasks?#{us_ref_string}#{status_string} 2>/dev/null)

		# Parse response body.
		us_tasks_parsed = JSON.parse userstory_tasks

		# Print it out.
		us_tasks_parsed.each do |task|
			puts "#{task['ref']}: (#{task['status_extra_info']['name']}) #{task['subject']}"
		end
			
	end

	def Task.status ref, status_name
		# Get task statuses so we have access to status id's. 
		stats = Status.task_statuses #=> array of hashes
		# status_id = stats[]
	end

end

class Status < Taiga

	def Status.userstory_statuses
		reqq = %x(curl -X GET \
						  -H "Content-Type: application/json" \
						  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
						  https://api.taiga.io/api/v1/userstory-statuses?project="${TAIGA_PROJECT_ID}" 2>/dev/null)
		req_parse = JSON.parse reqq
		ret = []
		req_parse.each do |r|
			ret.push({
				id: r['id'],
				name: r['name'],
				is_closed: r['is_closed']
			})
		end
		ret #=> [{id: 123, name: 'ready', is_close: false },...]
	end

	def Status.task_statuses
		reqq = %x(curl -X GET \
						  -H "Content-Type: application/json" \
						  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
						  https://api.taiga.io/api/v1/task-statuses?project="${TAIGA_PROJECT_ID}" 2>/dev/null)
		req_parse = JSON.parse reqq
		ret = []
		req_parse.each do |r|
			ret.push({
				id: r['id'],
				name: r['name'],
				is_closed: r['is_closed']
			})
		end
		ret #=> [{id: 123, name: 'ready', is_close: false },...]
	end

end

# Test case. 
# Userstory.index
# Task.index 