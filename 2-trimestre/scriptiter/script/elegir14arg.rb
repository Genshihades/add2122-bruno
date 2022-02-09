#!/usr/bin/env ruby
option = ARGV.first
if (option == "-c")
	system("sudo ruby crear-usuarios14iter.rb")
elsif (option == "-b")
	system("sudo ruby borrar-usuarios14iter.rb")
elsif (option == "-e")
	system("getent passwd | grep bruno ")  
else
	system ("error")
end
exit 1