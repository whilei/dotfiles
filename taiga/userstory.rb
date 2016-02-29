require 'json'
require 'optparse'
require './taiga-rb.rb'


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
			  https://api.taiga.io/api/v1/resolver?project="${TAIGA_PROJECT_RS}"\\&us=#{ref} 2>/dev/null)

			us_id_parsed = JSON.parse us_id_json
			# puts us_id_parsed["project"] # test
			# puts us_id_parsed["us"] # test
			# Get project
			us_id = us_id_parsed["us"]
			puts "resolved us_id -> #{us_id}"
			us_id
	end
	
	def Userstory.index allow_all

			if allow_all
				status_string = "" 
				p "Show including closed."
			else
				status_string = "\\&status__is_closed=false"
				p "Not showing closed." 
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

	def Userstory.tasks ref, allow_all

		if allow_all
			status_string = "" 
			p "Show including closed."
		else
			status_string = "\\&status__is_closed=false"
			p "Not showing closed." 
		end
		
			puts "Getting tasks for us ref #{ref[0].to_i}"
			
			# Ref. 
			us_ref = ref[0].to_i
			
			# Get us id by ref. 
			us_id = resolve_us_id us_ref

			userstory_tasks = %x(curl -X GET \
			  -H "Content-Type: application/json" \
			  -H "Authorization: Bearer ${TAIGA_AUTH_TOKEN}" \
			  https://api.taiga.io/api/v1/tasks?user_story=#{us_id}#{status_string} 2>/dev/null)

			us_tasks_parsed = JSON.parse userstory_tasks

			us_tasks_parsed.each do |task|
				puts "#{task['ref']}: (#{task['status_extra_info']['name']}) #{task['subject']}"
			end
			
	end


	############################################
	## Get args and options.
	############################################
	
	options = {}
	OptionParser.new do |opts|
	  opts.banner = "Usage: example.rb [options]"

	  # Test.
	  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
	    options[:verbose] = v
	  end

	  # List (index).
	  opts.on("-l", "--list", "List userstories") do |l|
	  	# ARGV is array of strings
	  	if ARGV.length > 0
	  		options[:list] = ARGV
	  	else 
	  		options[:list] = l # => true
	  	end
	  end

	  opts.on("-a", "--allow-all", "Allow closed (not only open)") do |a|
	  	options[:all] = a
	  end

	end.parse!

	p options
	p ARGV

	if Taiga::Auth.check_auth
		if options[:list] == true
			index options[:all]
		else 
			tasks options[:list], options[:all]
		end
	end

end

# Test case. 
# Userstory.index