# Vagrant

## 1º Instalar Vagrant

Vagrant es una herramienta para la creación y configuración de entornos de desarrollo virtualizados.

Haremos la instalación en la maquina real, de hecho en vez de usar la máquina linux de clase, he usado mi máquina windows 11.

![1](./img/1.png)

Comprobaremos que vagrant es compatible con la version que usamos en este caso si es compatible.

![1](./img/2.png)


## 2º Proyecto Celtics

Lo primero que haremos será crear el directorio Celtics.

![1](./img/3.png)

Antes de continuar, añadimos el repositorio de ubuntu para poder trabajar.

![](./img/2-3.png)

A partir de ahora vamos a trabajar dentro de la carpeta "Celtics".
Creamos un fichero nuevo llamado Vagrantfile con el siguiente contenido:

![1](./img/3-4.png)

El contenido indica el "box" que necesitamos, el nombre de host y el provedor de "VM".

Para arrancar simplemente escribiremos "*vagrant up*"

![1](./img/4.png)

Para poder entrar, vagrant genera claves publico-privadas y con "*Vagrant ssh*" podremos acceder.

![](./img/5.png)

##  Proyecto Hawks

Ahora vamos a hacer otro proyecto añadiendo redirección de puertos.

Crearemos la carpeta siguiente.

![](./img/6.png)

Creamos un "vagrantfile" con el siguiente contenido.

![](./img/7.png)

Aqui podemos ver que estamos configurando el network.

Al igual que antes, para iniciar usamos vagrant up, al arrancar nos salta el mensaje de firewall para poder configurar la red.

![](./img/8.png)

Entramos por ssh y le instalamos apache2

![](./img/9.png)

Comprobamos que esta el servicio arrancado.

![](./img/10.png)

Saldremos a la máquina real, y lanzaremos un vagrant port para ver si los puertos estan abierto.

![](./img/11.png)

Ahora iremos al navegador y pondremos lo siguiente para ver si podemos ver apache2 de la máquina virtual.

![](./img/12.png)

Ahora vemos como borrar las máquinas para tener memoria y poder continuar.

![](./img/13.png)

![](./img/14.png)

## Proyecto Lakers

Creamos como antes la carpeta Lakers.

![](./img/15.png)

En este proyecto, vamos a suministrar a la MV un pequeño script para instalar Apache.

Crearemos un Html con el nombre del proyecto y nuestro nombre y el siguiente script.

~~~
#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
~~~

Le daremos una extension ".sh", con esto le hemos indicado que debe hacer, en el vagrantfile añadiremos el siguiente script.


~~~
config.vm.provision :shell, :path => "install_apache.sh"
config.vm.synced_folder "html", "/var/www/html"
~~~
Con los dos script anteriores le hemos indicado a vagrant que, instale apache y que añada el HTML al directorio "var/www/html".

![](./img/16.png)

Comprobamos.

![](./img/17.png)

## Proyecto raptors

Ahora usaremos puppet, en el vagrant file añadiremos lo siguiente.

![](./img/18.png)

Ahora podemos ver que en apartado "provision" vemos que primero queremos que haga un *update* y luego que instale puppet.

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

Y en sudoers añadimos y comentamos lo que sea necesario.

![](./img/26.png)

Ahora creamos una carpeta llamada "vagrant14-bulls".

![](./img/27.png)

Comprobamos que la maquina esta apagada.

![](./img/28.png)

Y crearemos el pack con la maquina.

![](./img/29.png)

Haremos un vagrant box para ver que está, luego añadiremos la caja que hemos hecho.

![](./img/31.png)

![](./img/32.png)

Creamos un vagrantfile y comprobamos.

![](./img/33.png)

![](./img/34.png)
