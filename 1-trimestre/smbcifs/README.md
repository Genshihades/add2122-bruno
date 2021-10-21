# Samba (con OpenSUSE y Windows)
Samba es una implementación libre del protocolo de archivos compartidos de Microsoft Windows (antiguamente llamado SMB, renombrado recientemente a CIFS).

Crearemos los usuarios, los grupos y los añadiremos. crearemos 3 grupos llamados:

- Piratas
- Sambausers
- soldados    

![1](./img/1.png)

![1](./img/2.1.png)
>El usuario **Sambaguest** luego de crearlo le añadiremos la extension final
~~~~
/bin/false
~~~~
con el objetivo de que  no se pueda entrar por samba con este usuario.

En el grupo sambausers, añadiremos a todos los usuarios anteriormente creados.
![1](./img/2.png)

Creamos el directorio *samba14* y le configuramos los permisos.
![1](./img/3.png)

Dentro del directorio crearemos los siguientes tres directorios

![1](./img/4.png)                        
Y configuramos los permisos acorde a lo que necesitamos.
![1](./img/5.png)
Ahora, como medida de seguridad copiamos el ***.conf*** de samba para que en caso de error no tengamos problemas.
![1](./img/6.png)
Ahora configuramos el servidor, le añadiremos el nombre de grupo.
![1](./img/7.png)
Le daremos la siguiente configuración(tener en cuenta el cortafuegos).
![1](./img/8.png)        
Al terminar de configurar, iremos a **smb.conf** y en el le damos la siguiente estructura.          
![1](./img/10.png)                     
![1](./img/9.png)

Ahora le pondremos la contraseña a los usuarios samba.
![1](./img/11.png)
![1](./img/12.png)                               
Y al terminar reiniciamos el servicio y comprobamos.
![1](./img/13.png)
Añadiremos el servidor al fichero hosts de Windows.

![1](./img/14.png)            
Entraremos a red y buscaremos el recurso de red del servidor.
![1](./img/15.png)       
Entraremos a la carpeta castillo y comprobaremos que al escribir las credenciales nos deja entrar.
![1](./img/16.png)
![1](./img/17.png)                                                   
Y haremos lo mismo en la carpeta barco.
![1](./img/18.png)
![1](./img/19.png)
- net use para ver las conexiones abiertas.
- net use * /d /y, para borrar todas las conexión SMB/CIFS que se hayan realizado.

![1](./img/20.png)
![1](./img/21.png)                               
Y en el servidor haremos las comprobaciones.
![1](./img/22.png)
![1](./img/23.png)
Ahora veremos los recursos del servidor remoto con el siguiente comando.
![1](./img/24.png)
Y ahora crearemos una conexión con el recurso compartido y lo montamos en la unidad S:. y con la opción
~~~
/p:yes
~~~
hacemos el montaje persistente.
![1](./img/25.png)
Y comprobamos.
![1](./img/26.png)

Y en el servidor miraremos en samba.
![1](./img/27.png)
![1](./img/28.png)
Ahora iremos a OpenSUSE, en el dentro del gestor de archivos, usaremos *control+L* y escribimos:
~~~
smb://172.19.14.31
~~~

![1](./img/29.png)
Entraremos en castillo con los usuarios que tengan acceso y crearemos un usuario.
![1](./img/30.png)
![1](./img/31.png)
Y haremos lo mismo en barco.
![1](./img/32.png)
![1](./img/33.png)
Entraremos en public y nos permitirá verlo pero no añadir archivos.
![1](./img/34.png)          
En el servidor lanzaremos un *smbstatus, lsof -i -Pn*.
![1](./img/35.png)
![1](./img/36.png)
Ahora accederemos por el terminal.
![1](./img/37.png)

En la carpeta MNT crearemos los directorios remoto14 y castillo.

![1](./img/38.png)         
Al crear el directorio montaremos la carpeta de castillo en el directorio anterior.  
![1](./img/39.png)
En el servidor lanzaremos un *smbstatus*, *lsof -i -Pn*.
![1](./img/40.png)
![1](./img/41.png)
Reiniciamos la maquina y al lanzar el comando df -hT, veremos que no esta montado, esto es debido a que lo hecho anteriormente, era un montaje temporal ahora entrando en el fichero fstab, modificaremos eso para que siempre sea si.
![1](./img/42.png)
![1](./img/43.png)
Reiniciamos y comprobamos.
![1](./img/44.png)


## 4. Preguntas para resolver.
¿Las claves de los usuarios en GNU/Linux deben ser las mismas que las que usa Samba?
No, este servicio ya cuenta con su propio fichero de contraseñas además de autentificar independientemente.

¿Puedo definir un usuario en Samba llamado soldado3, y que no exista como usuario del sistema?
No, ya que si no está creado en la máquina no podrá se reconocido para agregarse al servicio.


¿Cómo podemos hacer que los usuarios soldado1 y soldado2 no puedan acceder al sistema pero sí al samba?
Cambiamos el shell /bin/bash por shell /bin/false
en el documento /etc/passwd.
