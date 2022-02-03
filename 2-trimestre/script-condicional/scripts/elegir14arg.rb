#!/usr/bin/env ruby
option = ARGV.first
if (option == "-c")
	system("sudo ruby crear-usuarios14.rb")
elsif (option == "-b")
	system("sudo ruby borrar-usuarios14.rb")
else
	system("echo 'Valor no válido' ")  
	system("sl")
end
exit 1