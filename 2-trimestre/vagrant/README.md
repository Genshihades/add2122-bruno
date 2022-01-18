# Vagrant

***Nombre:*** Bruno García Fernández

***Curso:*** 2º de Ciclo Superior de Administración de Sistemas Informáticos en Red.


### ÍNDICE

+ [Instalar Vagrant](#id1)
+ [Proyecto: Añadir cajas](#id2)
+ [Proyecto: Redirección de puertos](#id3)
+ [Proyecto: suministro mediante shell script](#id4)
+ [Proyecto: Suministro mediante Puppet](#id5)
+ [Proyecto: Caja personalizada ](#id6)
+ [Proyecto: Windows](#id7)


## Instalar Vagrant <a name="id1"></a>

Vagrant es una herramienta para la creación y configuración de entornos de desarrollo virtualizados.
Para empezar instalaremos Vagrant, usaremos el instalador que Vagrant nos da para su versión de Windows.

![1](./img/1.PNG)

Comprobaremos que Vagrant es compatible con la versión que usamos de VirtualBox. En este caso si es compatible.

![1](./img/2.PNG)


## Proyecto: Añadir cajas <a name="id2"></a>

Una de las funciones de Vagrant, es que te permite usar cajas *(imágenes para máquinas virtuales previamente construidas)* creadas por la comunidad, para empezar con esta práctica usaremos una caja de "Ubuntu/Bionic", para obtenerla simplemente usaremos `Vagrant box add "nombre de la caja"`, en este caso la anteriormente mencionada "Ubuntu".

![1](./img/3.PNG)

Para comprobar que, efectivamente se ha descargado con éxito, usaremos el comando `Vagrant box list`, nos deberá aparecer el siguiente resultado.

![1](./img/4.PNG)

Para empezar a comprender Vagrant, crearemos una primera máquina virtual con la caja anterior para ello, crearemos un directorio llamado `nombreXX-va1box.d`("donde XX es el número de asiento").

![2](./img/5.PNG)

Dentro de esta carpeta, crearemos un fichero, este archivo llamado `Vagrantfile` sirve como esqueleto para poder definir parámetros, como por ejemplo el nombre de hosts de la máquina virtual, quién da servicio, que caja usar..., en Windows no es posible crear ese archivo (He buscado un poco, he visto formas pero personalmente no me han funcionado), por ello usando el comando `Vagrant init` podremos crear uno muy completo que podremos usar en la versión de Win10.

<<<<<<< HEAD
![1](./img/6.PNG)
=======
Haremos la instalación en la máquina real, de hecho en vez de usar la máquina Linux de clase, he usado mi máquina Windows 11.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Al terminar de definir cada parámetro procedemos a arrancar la máquina, para ello usaremos `Vagrant up`.

<<<<<<< HEAD
![1](./img/7.PNG)
=======
Comprobaremos que Vagrant es compatible con la versión que utilizamos en este caso si es compatible.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Tardará un poco en arrancar pero al terminar, usando el comando `Vagrant ssh`, podremos entrar en la máquina virtual sin ningún problema.

<<<<<<< HEAD
![1](./img/8.PNG)

> Podemos ver que nos indica versión, tamaño... Podemos ver que no nos pide contraseña ya que vagrant se encarga de crear claves público-privadas para conectarnos con mayor comodidad.
=======
## 2º Proyecto Celtics
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Al terminar de usar la máquina, podremos salir fácilmente con `exit`.

![1](./img/9.PNG)

<<<<<<< HEAD
Las máquinas virtuales ocupan espacio, por ello siempre es recomendable que, si no se va a volver a usar las borremos para ello Vagrant tiene diversos comandos:

+ `vagrant halt` para apagar la máquina virtual.
+ `vagrant status` para comprobar el estado de la máquina virtual.
+ `vagrant destroy` para eliminar la máquina virtual (ojo, borra la máquina pero no los ficheros de configuración, esos deberemos borrarlos manualmente.)
=======
Antes de continuar, descargamos el repositorio de Ubuntu para poder trabajar.
![](./img/2-3.png)
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Apagaremos la máquina virtual para luego eliminarla.

![1](./img/10.PNG)

<<<<<<< HEAD
Luego comprobaremos el estado de la máquina virtual.
=======
El contenido indica el "box" que necesitamos, el nombre de host y el proveedor de "VM".
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/11.PNG)

Y finalmente borraremos la máquina virtual. Vagrant por precaución consulta si estás seguro de eliminar la máquina virtual.

<<<<<<< HEAD
![1](./img/12.PNG)
=======
Para poder entrar, Vagrant genera claves público-privadas y con "*Vagrant ssh*" podremos acceder.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

## Proyecto: Redirección de puertos <a name="id3"></a>

<<<<<<< HEAD
Ahora vamos a crear un proyecto añadiendo redirección de puertos, esto sirve para si queremos instalar servicios como Nginx, Apache2 entre otros.

Para empezar crearemos un directorio con el nombre  `nombreXX-va3port.d`.

![1](./img/14.PNG)
=======
## Proyecto Hawks
Ahora vamos a hacer otro proyecto añadiendo redirección de puertos.
Generaremos la carpeta siguiente.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011


<<<<<<< HEAD
Entraremos en el directorio y en él crearemos otro `vagrantfile` (al igual que antes podemos hacer uso de `vagrant init`.)
=======
Generamos un "vagrantfile" con el siguiente contenido.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/15.PNG)

<<<<<<< HEAD
Como podemos ver, hemos añadido varias cosas:

+ `config.vm.network :forwarded_port, host: 42XX, guest: 80` esto permite sustituir el puerto 80 por el puerto que decidamos, usando el ejemplo, seria `42XX`(al igual que antes y durante toda la práctica, siendo XX el número de asiento.).
+ `config.vm.define "vagrant-port"` esto hará que la máquina obtenga el nombre definido.
+ `config.vm.provider "virtualbox" do |v| v.memory = 2048` esto permitirá añadir la memoria RAM que necesitemos, siguiendo el ejemplo serían 2048 MB (2GB aproximadamente).
=======
Aquí podemos ver que estamos configurando el network.

Al igual que antes, para iniciar utilizamos Vagrant up, al arrancar nos salta el mensaje de firewall para poder configurar la red.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Crearemos la máquina.

<<<<<<< HEAD
![1](./img/16.PNG)
=======
Entramos por SSH y le instalamos Apache
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Viendo la imagen, podemos ver varias cosas, primero al generar la máquina vemos el nombre que hemos definido, luego, en el recuadro negro vemos que se está redirigiendo los puertos de salida según definimos en el "vagrantfile".

<<<<<<< HEAD
Al entrar en VirtualBox, podemos ver que, efectivamente se ha cambiado el nombre y se ha añadido la memoria establecida.
=======
Comprobamos que está el servicio arrancado.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/17.PNG)

<<<<<<< HEAD
=======
Saldremos a la máquina real, y lanzaremos un Vagrant port para ver en todo momento los puertos que se han redireccionado.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Nos conectaremos por SSH para comprobar que todo funciona.

<<<<<<< HEAD
![1](./img/18.PNG)
=======
Ahora iremos al navegador y pondremos lo siguiente para ver si podemos ver Apache de la máquina virtual.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Dentro de la máquina virtual, instalaremos Apache2.

![1](./img/19.PNG)

Al instalar Apache2 saldremos a la máquina real y usaremos el comando `vagrant port` para ver la redirección de puertos.

![1](./img/20.PNG)

En la captura aparecen dos puertos, el 22 y el 80, como podemos ver, el 80 esta redireccionado al que elegimos.

<<<<<<< HEAD
Para finalizar, comprobaremos que la redirección funciona, para ello iremos a un navegador en nuestra máquina local, yendo a la ip `127.0.0.1:4214`, para comprobar que efectivamente funciona viendo la pagina por defecto de Apache2.
=======
Generamos como previamente la carpeta Lakers.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/21.PNG)

Como hicimos antes, apagaremos y borraremos la máquina virtual.

<<<<<<< HEAD
![1](./img/22.PNG)
=======
Generaremos un HTML con el nombre del proyecto y nuestro nombre y el siguiente script.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/23.PNG)

## Proyecto: suministro mediante shell script <a name="id4"></a>

Un aspecto característico de vagrant es el uso de herramienta de suministro, nos permite proveer a una máquina virtual con scripts para, entre otras cosas instalar, configurar, personalizar, y sobretodo automatizar tareas en las máquinas que creamos.

En este apartado vamos a crear varios directorios que serán:

+ `alumnoXX-va4script.d` donde tendremos el `vagrantfile` y un script que prepararemos en breve.
+ `html` Una carpeta que contendrá un `.html` con el que pondremos un mensaje.

![1](./img/24.PNG)

Para empezar, vamos a crear el script, con el siguiente argumento:
~~~
#!/usr/bin/env bash

echo "[INFO] Script de instalación de apache2 de [nombre-alumnoXX]"
apt update
apt install -y apache2
echo "[INFO] Fin del script: $(date)"
~~~

para empezar definimos en que lenguaje lo va a leer (bash) haremos que nos envie un mensaje mediante un echo, el programa pedirá una "update" y luego la instalación confirmada de apache2

<<<<<<< HEAD
> Con confirmada me refiero al -y que nos permitirá instalar sin que el sistema pregunte.

Al terminar de instalar nos "printará" en pantalla el fin del script con la fecha.

En nuestro programa, reemplazaremos el `nombre-alumnoXX` por nuestro nombre y asiento.

![1](./img/26.PNG)

En la carpeta `html` crearemos un archivo `.html` que llamaremos "index" escribiremos el nombre del proyecto, la fecha y nuestro nombre.

![1](./img/27.PNG)

Ahora procedemos a preparar el vagrantfile.

![1](./img/28.PNG)

Dentro de este vagrantfile podemos ver varias cosas:
+ `config.vm.provision :shell, :path => "install.apache.sh"` con esto le estamos indicando a Vagrant que debe ejecutar el script que hemos creado previamente dentro del entorno.
+ `config.vm.synced_folder "html", "/var/www/html"` esta línea indica a Vagrant que debe sincronizar la carpeta html de nuestra máquina real, con la carpeta "/var/www/html"
del entorno virtual.

Como hemos hecho a lo largo de la práctica, iniciaremos el servicio con `vagrant up`, como podemos ver marcado, vemos que vagrant a sincronizado la carpeta `html` a donde indicamos y ha ejecutado el script que hemos creado.

![1](./img/29.1.png)

Al terminar, para comprobar iremos a un navegador y buscaremos la siguiente IP.

![1](./img/29.PNG)

Podemos ver que efectivamente vemos el `index.html` que habíamos creado.

## Proyecto: Suministro mediante Puppet <a name="id5"></a>

Puppet es un orquestador. Sirve para aprovisionar las máquinas locales o remotas sin usar scripting.

Para empezar crearemos un directorio con el nombre `nombreXX-va5puppet.d`.

![1](./img/30.PNG)

Dentro del directorio anterior añadiremos la carpeta `manifests`(importante añadir la s al final, de no hacerlo no funcionará correctamente).

![1](./img/31.PNG)

Dentro de este último crearemos un archivo,
`nombreXX.pp` y en el añadiremos las siguientes instrucciones Puppet:

![1](./img/32.1.png)

El programa que hemos instalado ha sido `neofetch` un programa escrito en lenguaje bash, que permite ver en la terminal la información básica del hardware y del software instalado.

Ahora configuramos el Vagrantfile, como antes, deberemos añadirle ciertas líneas nuevas.

![1](./img/32.PNG)

+ `config.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get install -y puppet"` con esta sentencia, habremos indicado que queremos instalar Puppet.

+ `config.vm.provision "puppet" do |puppet|
    puppet.manifest_file = "nombre-del-alumnoXX.pp"` esto permitirá aprovisionar con Puppet desde el archivo que creamos previamente.

Lanzaremos un `vagrant up` para arrancar y un `vagrant ssh` para conectarnos y para hacer comprobaciones.

![1](./img/33.PNG)

Si en la máquina lanzamos un `neofetch -ver` veremos datos del sistema y comprobaremos su instalación.

![1](./img/33.1.PNG)

Puede pasar que, debido a problemas o una mala sintaxis, no permita que los parámetros definidos en el vagrantfile u otros archivos que hemos preparado no funcionen adecuadamente, por ello si nos sucede algo similar Vagrant nos permite recargar la configuración
con `Vagrant reload`.


![1](./img/34.PNG)

Usando `vagrant provision` podremos volver a provisionar la máquina que estamos ejecutando.

![1](./img/35.PNG)


## Proyecto: Caja personalizada <a name="id6"></a>

A lo largo de la práctica hemos usado una caja de un repositorio de Vagrant y le hemos hecho diversas cosas (redirigir puertos, instalarle programas etc...) ahora vamos a algo más interesante, Crear una caja personalizada con una maquina que tengamos.


Lo primero será crear o usar una máquina que tengamos instalada, para esta práctica se ha usado una máquina OPENsuse.

Lo primero será crear un usuario Vagrant, será crucial para que, a la hora de ejecutar Vagrant podamos conectarnos por SSH.


![1](./img/36.PNG)

> Usamos el comando `useradd -m` para que nos dé directamente


Para que funcione SSH instalaremos "OpenSSH".

![1](./img/37.1.PNG)
=======
~~~
config.vm.provision :shell, :path =&gt; "install_apache.sh"
config.vm.synced_folder "html", "/var/www/html"
~~~
Con los dos script anteriores le hemos indicado a vagrant que, instale apache y que añada el HTML al directorio "var/www/html".
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Luego, en el home de Vagrant crearemos una carpeta para SSH, con permisos `700`, después descargamos la clave pública que Vagrant proveé.

![1](./img/37.PNG)

Le modificamos los permisos de la carpeta dándole permisos `600` y haremos dueño al usuario Vagrant.

<<<<<<< HEAD
![1](./img/38.PNG)
=======
## Proyecto Raptors
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Tenemos que conceder permisos al usuario vagrant para que pueda hacer tareas privilegiadas como configurar la red, instalar software, montar carpetas compartidas, etc. Para ello debemos configurar el fichero /etc/sudoers.

![1](./img/39.PNG)

<<<<<<< HEAD
Añadimos la línea `vagrant ALL=(ALL) NOPASSWD: ALL`
=======
Ahora podemos ver que en apartado "provisión" vemos que primero queremos que haga un *update* y luego que instale puppet.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Ahora veremos si están las "Guest Additions" de virtualbox añadidas en la máquina.

![1](./img/40.PNG)

> Si se usa una máquina OPENsuse 13.5 leap, ya vienen preinstaladas.

Ahora en la máquina anfitriona crearemos el directorio siguiente.

![1](./img/41.PNG)

<<<<<<< HEAD
Tenemos que crear el box, usaremos el comando `vagrant package --base VMNAME --output nombreXX.box`

> En VMNAME ponemos el nombre de la máquina que vamos a usar de box.
=======
## proyecto bulls
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011


<<<<<<< HEAD
![1](./img/42.PNG)

El proceso puede tardar un poco esperamos, de mientras podemos ir creando el Vagrantfile.
=======
Lo primero sera crear una maquina virtual (en mi caso una opensuse) y en el lo primero sera crear un par de claves para vagrant.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/43.PNG)

Luego de preparar el Vagrantfile y de terminar de crear el box lo añadiremos a nuestra lista de boxes.

![1](./img/45.PNG)

para acabar lanzamos un `Vagrant up` para comprobar que se crea la máquina.

<<<<<<< HEAD
![1](./img/44.PNG)

(ACLARACIÓN, Durante la realización de la práctica, tuve varios problemas técnicos, siendo este uno inremediable por lo que, se optó por ver la consola directamente desde VirtualBox.)
=======
![](./img/24.png)
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/46.PNG)

Al terminar con algún box viejo o desactualizado, no es conveniente tenerlo guardado, Vagrant, con su comando `vagrant box remove` nos permite eliminar nuestras cajas si no queremos usarlas más.

<<<<<<< HEAD
![1](./img/47.PNG)
=======
Y en Sudoers añadimos y comentamos lo que sea necesario.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

## Proyecto: Windows <a name="id7"></a>

<<<<<<< HEAD
En Vagrant, no todos son sistemas operativos basados en GNU/Linux, también podremos usar sistemas operativos como Windows, podemos crear una máquina con un windows que queramos o necesitemos o descargar el box de un repositorio en Vagrant. Para este apartado se ha usado una caja de Windows 10 enterprise.
=======
Ahora generamos una carpeta llamada "vagrant14-bulls".
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Crearemos un directorio llamado `nombreXX-va7windows.d`

<<<<<<< HEAD
![1](./img/48.PNG)
=======
Comprobamos que la máquina esta apagada.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Añadiremos la caja como hemos visto a lo largo de la práctica, en este caso usaremos la descrita en la imagen.

<<<<<<< HEAD
![1](./img/49.PNG)
=======
Y generaremos el pack con la máquina.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

![1](./img/50.png)

Dentro del directorio crearemos el respectivo Vagrantfile.

![1](./img/52.png)

Ejecutamos el `vagrant up`

<<<<<<< HEAD
![1](./img/53.png)
=======
Generamos un vagrantfile y verificamos.
>>>>>>> 8a28261ae9d243421192d891eb15380d68816011

Entraremos por SSH y con el comando `systeminfo` veremos la información del sistema operativo windows.

![1](./img/54.png)
