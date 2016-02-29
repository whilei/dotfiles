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
  	options[:ref] = ARGV[0] # note: array is relative to opt.
  end

end.parse!

# Resource is first argument.
resource = ARGV[0]

# Make sure we're authenticated. 
if Taiga::Auth.check_auth
	
	case resource
	when "task","tasks"
		Task.index(options[:ref],	options[:exclude_closed]) if options[:list]
	when "us","userstory","userstories"
		Userstory.index(options[:exclude_closed])
	end

end

# ----------- Testes ------------ #
# p options
# p ARGV
# ia@mh:~/.dotfiles/taiga (master *%=) $ tg task -a 1
	# {:list=>true, :exclude_closed=>false}
	# ["task", "1"]
# ------------------------------- #









