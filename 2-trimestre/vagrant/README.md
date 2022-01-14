# Vagrant

## 1º Instalar Vagrant

Vagrant es una herramienta para la creación y configuración de entornos de desarrollo virtualizados.

Haremos la instalación en la máquina real, de hecho en vez de usar la máquina Linux de clase, he usado mi máquina Windows 11.

![1](./img/1.png)

Comprobaremos que Vagrant es compatible con la versión que utilizamos en este caso si es compatible.

![1](./img/2.png)

## 2º Proyecto Celtics

Lo primero que haremos será crear el directorio Celtics.

![1](./img/3.png)

Antes de continuar, descargamos el repositorio de Ubuntu para poder trabajar.
![](./img/2-3.png)

A partir de ahora vamos a trabajar dentro de la carpeta "Celtics".
Creamos un fichero nuevo llamado Vagrantfile con el siguiente contenido:

![1](./img/3-4.png)

El contenido indica el "box" que necesitamos, el nombre de host y el proveedor de "VM".

Para arrancar simplemente escribiremos "*vagrant up*"

![1](./img/4.png)

Para poder entrar, Vagrant genera claves público-privadas y con "*Vagrant ssh*" podremos acceder.

![](./img/5.png)

## Proyecto Hawks
Ahora vamos a hacer otro proyecto añadiendo redirección de puertos.
Generaremos la carpeta siguiente.

![](./img/6.png)

Generamos un "vagrantfile" con el siguiente contenido.

![](./img/7.png)

Aquí podemos ver que estamos configurando el network.

Al igual que antes, para iniciar utilizamos Vagrant up, al arrancar nos salta el mensaje de firewall para poder configurar la red.

![](./img/8.png)

Entramos por SSH y le instalamos Apache

![](./img/9.png)

Comprobamos que está el servicio arrancado.

![](./img/10.png)

Saldremos a la máquina real, y lanzaremos un Vagrant port para ver en todo momento los puertos que se han redireccionado.

![](./img/11.png)

Ahora iremos al navegador y pondremos lo siguiente para ver si podemos ver Apache de la máquina virtual.

![](./img/12.png)

Ahora vemos como borrar las máquinas para tener memoria y poder continuar.

![](./img/13.png)

![](./img/14.png)

## Proyecto Lakers

Generamos como previamente la carpeta Lakers.

![](./img/15.png)

En este proyecto, vamos a suministrar a la MV un pequeño script para instalar Apache.

Generaremos un HTML con el nombre del proyecto y nuestro nombre y el siguiente script.

~~~
#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
~~~

Le daremos una extension ".sh", con esto le hemos indicado que debe hacer, en el vagrantfile añadiremos el siguiente script.

~~~
config.vm.provision :shell, :path =&gt; "install_apache.sh"
config.vm.synced_folder "html", "/var/www/html"
~~~
Con los dos script anteriores le hemos indicado a vagrant que, instale apache y que añada el HTML al directorio "var/www/html".

![](./img/16.png)

Comprobamos.

![](./img/17.png)

## Proyecto Raptors

Ahora usaremos puppet, en el vagrant file añadiremos lo siguiente.

![](./img/18.png)

Ahora podemos ver que en apartado "provisión" vemos que primero queremos que haga un *update* y luego que instale puppet.

Crearemos una carpeta llamada manifests y en el crearemos un fichero en el que añadiremos lo siguiente:

![](./img/19.png)

Con esto podremos el programa que querramos instalar.

Y ahora corremos el siguiente programa.

![](./img/20.png)

## proyecto bulls

En los apartados anteriores hemos descargado una caja/box de un repositorio de Internet, y la hemos personalizado. En este apartado vamos a crear nuestra propia caja/box a partir de una MV de VirtualBox que tengamos.

Lo primero sera crear una maquina virtual (en mi caso una opensuse) y en el lo primero sera crear un par de claves para vagrant.

![](./img/21.png)

Creamos el usuario vagrant y le damos claves.

Ahora configuramos la maquina dando los permisos que necesitamos.

![](./img/23.png)

![](./img/24.png)

Con el siguiente comando podremos ver la version de las guestadditions.

![](./img/25.png)

Y en Sudoers añadimos y comentamos lo que sea necesario.

![](./img/26.png)

Ahora generamos una carpeta llamada "vagrant14-bulls".

![](./img/27.png)

Comprobamos que la máquina esta apagada.

![](./img/28.png)

Y generaremos el pack con la máquina.

![](./img/29.png)

Haremos un vagrant box para ver que está, luego añadiremos la caja que hemos hecho.

![](./img/31.png)

![](./img/32.png)

Generamos un vagrantfile y verificamos.

![](./img/33.png)

![](./img/34.png)
