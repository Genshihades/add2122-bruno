#!/usr/bin/env ruby
option = "b"
if (option == "c")
	system("ruby crear-usuarios14.rb")
elsif (option == "b")
	system("ruby borrar-usuarios14.rb")
else
	system("echo 'El valor no es valido' ")  
	system("sl")
end
exit 1