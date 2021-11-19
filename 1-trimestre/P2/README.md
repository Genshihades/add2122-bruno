# Cliente para autenticación LDAP

Lo primero que deberemos hacer es configurar LDAP en la maquina cliente, para ello en yast nos debe aparecer LDAP y Kerberos, en caso de que no ocurra, deberemos instalar **yast2-auth-client**.

![1](./img/1.png)

Antes de continuar deberiamos incluir nuestra maquina servidor en el fichero */etc/hosts*.
Ahora configuramos LDAP.

![1](./img/2.png)

En el apartado de ubicacion de red debemos añadir nuestro servidor LDAP y ver que funciona para ello daremos a la opción, "probar conexión".

![1](./img/4.png)

Si esta todo correcto nos dara el mensaje anterior.


![1](./img/3.png)

Luego de una correcta configuración trataremos de buscar el usuario Mazinger.

![1](./img/6.png)

He iniciaremos sesión.

![1](./img/5.png)

Ahora crearemos un nuevo usuario usando los comandos que se reflejan en la captura.

![1](./img/7.png)

Comprobamos su existencia.

![1](./img/8.png)

Iniciamos sesión en el cliente.

![1](./img/9.png)
