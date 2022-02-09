#!/usr/bin/env ruby
for i in 1..5 do
	system ("sudo userdel -r bruno#{i}")
	puts ("Borrando usuario #{i}")
end
exit