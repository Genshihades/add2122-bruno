#!/usr/bin/env ruby
system("echo 'Elija opción c para crear y b para borrar' ")
opcion = gets.chomp
if (opcion == "c")
	system("ruby crear-usuarios14.rb")
elsif (opcion == "b")
	system("ruby borrar-usuarios14.rb")
else
	system("echo 'El valor no es valido' ")  
	system("sl")
end
exit 1
