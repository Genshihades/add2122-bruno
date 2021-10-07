## SSH
Crearemos una maquina linux como servidor, usaremos opensuse, en el añadiremos a hosts los equipos client14g y client14w.
Haremos un ping y unas comprobaciones.
![1](./img/1.1.png)
Desde el sevidor haremos un ping a la maquina cliente.
![1](./img/1.2.png)
![1](./img/1.3.png)
Ahora crearemos los usuarios.
![1](./img/1.4.png)
Añadiremos contraseñas.  
![1](./img/1.5.png)
En la maquina cliente, después de añadir el server14g a hosts haremos un ping. tambien añadiremos al cliente14w y haremos el mismo progreso.
![1](./img/1.6.png)



En la maquina de windows instalamos putty.

![1](./img/1.7.png)

Al igual que antes, en windows añadiremos las maquinas y comprobaremos con un ping
![1](./img/1.8.png)
![1](./img/1.9.png)

Comprobaremos que esta instalado el servicio sshd.
![1](./img/2.1.png)
![1](./img/2.2.png)
En el equipo client14g haremos un ping al servidor para comprobar y haremos un nmap para ver los puertos.
![1](./img/2.3.png)
![1](./img/2.4.png)
al acabar entraremos usando
~~~
shh garcia1@server14g

~~~
![1](./img/2.5.png)
Usaremos el Putty y tambien entraremos al servidor.
![1](./img/2.6.png)
![1](./img/2.7.png)

Aqui como podemos ver, en windows nos pide contraseña.


Ahora personalizamos el prompt Bash, en este caso, para el usuario garcia1.
![1](./img/4.1.png)
Luego de hacerlo reiniciamos el servicio y comprobamos.
![1](./img/4.2.png)

Ahora crearemos una autentificación mediante claves públicas, para ello en el servidor iremos al terminal y generaremos un keygen.
![1](./img/3.1.png)
![1](./img/3.2.png)

En la configuración de ssh habilitamos el host key.
![1](./img/5.1.png)
En el cliente copiaremos el id ssh.
Finalmente comprobamos.
![1](./img/5.2.png)
![1](./img/5.3.png)
Si entramos al cliente de windows, podremos ver que al cliente14w si le exige contraseña pero en el cliente linux no.

Ahora configuraremos el ssh como túnel para X, para ello volveremos a la configuración de ssh e iremos a descomentar X11Forwarding yes. Para poder ver aplicaciones graficas.
![1](./img/6.1.png)

Descargaremos en el servidor la aplicacion geany.(Comprobamos que en el cliente no esta.)
![1](./img/6.2.png)
Ahora nos conectamos usando el siguiente codigo
~~~
ssh -X garcia1@server14g

~~~
IMPORTANTE: la -X mayúscula.
y al entrar de esta manera ejecutamos Geany.
![1](./img/6.3.png)
Haremos lo mismo pero con aplicaciones con windows como Wine.
![1](./img/7.1.png)

Para continuar, Crearemos Restricciones de uso, usando el Usuario garcia2, para ello en el servidor, iremos a la configuración de sshd y usando *DenyUsers*.
![1](./img/8.1.png)
Usando el siguiente codigo, comprobamos que el sintaxis es correcto, para ello veremos que si la respuesta es 0 es correcto.
![1](./img/8.2.png)
![1](./img/8.3.png)

# Servidor SSH en Windows
En windows podremos configurarlo de manera que pueda usar OpenSSH. Primero crearemos una maquina windows server 2016.

![1](./img/9.1.png)

Despues de descargar OpenSSH y guardarlo en program files. Iremos a una consola de powershell.
Pondremos el codigo que se ve en la captura.

![1](./img/9.2.png)

Antes de instalar añadimos los clientes en el hosts del server windows y viceversa.
![1](./img/9.4.png)
Finalmente instalamos el Openssh, y lo configuramos como se ve.
![1](./img/9.5.png)
![1](./img/9.6.png)
Añadiremos una regla al firewall para ssh.
![1](./img/9.7.png)
Definiremos que el servicio funcione siempre, tanto el sshd como el ssh-agent.
![1](./img/9.8.png)
Iniciamos el servicio.
![1](./img/9.9.png)
Comprobamos en ambos clientes.
![1](./img/9.10.png)
![1](./img/9.11.png)
