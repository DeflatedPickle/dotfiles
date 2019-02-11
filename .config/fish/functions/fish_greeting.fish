function fish_greeting
	# Sets the display, for use with an X server
	export DISPLAY=localhost:0
	
	# uname -nmsr
	# uptime
  
	# Get the language versions
	set pyth_v (python -c 'import platform; import __future__; print(platform.python_version())')
	set perl_v (perl -e 'print "$]\n";')
	set ruby_v (ruby -e 'print "#{RUBY_VERSION}\n"')
  
	# Display the system info
	neofetch
  
	# Display the language info
	display_info "Python" $pyth_v
	display_info "Perl" $perl_v
	display_info "Ruby" $ruby_v
end

function display_info
	set_color cyan
	printf " $argv[1]"
	set_color white
	printf ": $argv[2]\n"
end
