#!/usr/bin/env ruby
for i in 1..5 do
	system ("sudo useradd -m bruno#{i}")
	puts ("Creando usuario #{i}")
end
exit