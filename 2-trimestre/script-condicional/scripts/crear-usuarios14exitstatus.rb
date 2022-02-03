#!/usr/bin/env ruby
ok1 = system("id bruno01r")
ok2 = system("id bruno02r")
ok3 = system("id bruno03r")
ok4 = system("id bruno04r")
ok5 = system("id bruno05r")
ok6 = system("id bruno06r")
ok7 = system("id bruno07r")
ok8 = system("id bruno08r")
ok9 = system("id bruno09r")
ok10 = system("id bruno10r")
if (ok1 == false)
	
	system("sudo useradd -m bruno01r")
	system("sudo echo 'bruno01r:bruno01r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok2 == false)
	system("sudo useradd -m bruno02r")
	system("sudo echo 'bruno02r:bruno02r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok3 == false)
	system("sudo useradd -m bruno03r")
	system("sudo echo 'bruno03r:bruno03r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok4 == false)
	system("sudo useradd -m bruno04r")
	system("sudo echo 'bruno04r:bruno04r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok5 == false)
	system("sudo useradd -m bruno05r")
	system("sudo echo 'bruno05r:bruno05r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok6 == false)
	system("sudo useradd -m bruno06r")
	system("sudo echo 'bruno06r:bruno06r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok7 == false)
	system("sudo useradd -m bruno07r")
	system("sudo echo 'bruno07r:bruno07r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok8 == false)
	system("sudo useradd -m bruno08r")
	system("sudo echo 'bruno08r:bruno08r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok9 == false)
	system("sudo useradd -m bruno09r")
	system("sudo echo 'bruno09r:bruno09r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
if (ok10 == false)
	system("sudo useradd -m bruno10r")
	system("sudo echo 'bruno10r:bruno10r' | sudo chpasswd")
else
	system("El usuario ya existe")
end
