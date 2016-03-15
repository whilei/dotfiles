require 'optparse'
require './taiga-rb'
require './api'



############################################
## Get args and options.
############################################

options = {
	list: true, # default list all
	exclude_closed: true # default exclude where status is closed
}

OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  # # Test.
  # opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
  #   options[:verbose] = v
  # end

  # List (index).
  # opts.on("-l", "--list", "List userstories") do |l|
  # 	# ARGV is array of strings
  # 	if ARGV.length > 0
  # 		options[:list] = ARGV
  # 	else 
  # 		options[:list] = l # => true
  # 	end
  # end

  opts.on("-a", "--allow-all", "Allow closed (not only open)") do |a|
  	options[:exclude_closed] = false
  end

  opts.on("-r", "--ref", "Specify reference") do |r|
  	options[:ref] = ARGV[0] # note: array is relative to opts arg.
  end

  opts.on("-s", "--status", "Get or set status") do |s|
    options[:list] = false
    options[:status] = s
    options[:status_name] = ARV[0] 
  end

end.parse!

# Resource is first argument.
resource = !ARGV[0].nil? ? ARGV[0] : 'us'

# Make sure we're authenticated. 
if Taiga::Auth.check_auth
	
	case resource
	when "task","tasks"
    puts " ** Tasks -"
    
    # tg task 3 -s <done>
    Task.status(
      ARGV[1], # ref
      options[:status_name]
    ) if options[:status]        	   
  when "us","userstory","userstories"
    puts " ** Userstories -"
    # tg us <-a>
    Userstory.index(options[:exclude_closed]) if options[:list]

    # tg us <4> <-a>
    Task.index(ARGV[1], options[:exclude_closed]) (options[:list] && ARGV[1])

    # tg us <34> -s <done>
    Userstory.status(
      ARGV[1], # ref
      options[:status_name]
    ) if options[:status]         
  when "status","statuses"
    puts " ** Statuses"
    puts Status.userstory_statuses if ARGV[1] == "us"
    puts Status.userstory_statuses if ARGV[1] == "task" || "tasks"

	end

end

# ----------- Testes ------------ #
# p options
# p ARGV
# ia@mh:~/.dotfiles/taiga (master *%=) $ tg task -a 1
	# {:list=>true, :exclude_closed=>false}
	# ["task", "1"]
# ------------------------------- #









