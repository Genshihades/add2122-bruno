# Docker

Lo primero será instalar docker, y configurarlo de manera que este siempre encendido al arrancar la maquina. usaremos los comandos:
~~~
systemctl start docker
systemctl enable docker
~~~

para comprobar que efectivamente funciona podremos preguntar al fichero ip_forward, si esta activo sale 1.

![1](./img/docker1.png)

Crearemos un usuario y lo añadimos al grupo de docker para poder usarlo.

![1](./img/docker2.png)

![1](./img/docker3.png)

Comprobamos la version de docker.

![1](./img/docker4.png)

Ejecutamos docker run hello-world para arrancar el primer programa de docker.

![1](./img/docker5.png)

Haremos un docker ps -a para ver que esta el programa corriendo.

![1](./img/docker6.png)

Paramos y borramos el "hello world".

![1](./img/docker7.png)

Buscamos en docker, debian.

![1](./img/docker8.png)

hacemos un pull para coger la imagen.

![1](./img/docker9.png)

comprobamos que la tenemos con docker images.

![1](./img/docker10.png)

la ejecutamos y nos entrará en una consola de debian.

![1](./img/docker11.png)

![1](./img/docker12.png)

Instalamos Nginx.

![1](./img/docker13.png)


![1](./img/docker14.png)

Creamos un html con hola mundo.

![1](./img/docker15.png)

Y un programita con una información de Nginx.

![1](./img/docker16.png)

Salimos de la consola, hacemos un commit con el nombre que hemos puesto en la imagen.

![1](./img/docker17.png)

comprobamos la imagen.

![1](./img/docker18.png)

Paramos el docker y borramos.

![1](./img/docker19.png)

Ahora ejecutamos nuestra nueva imagen y comprobamos que funciona en el navegador.

![1](./img/docker20.png)

![1](./img/docker21.png)
![1](./img/docker22.png)

Ahora creamos un fichero local con un html con un hola mundo y un fichero Dockerfile con los parametros que el profesor desea.

![1](./img/docker23.png)

Lo runeamos.

![1](./img/docker24.png)

Comprobamos que la imagen existe


![1](./img/docker25.png)

y al correr el contenedor vemos que nos aparece lo que hemos realizado.

![1](./img/docker26.png)

![1](./img/docker27.png)

Ahora crearemos uno similar y lo subiremos al servidor de docker.

![1](./img/docker30.png)

![1](./img/docker31.png)

![1](./img/docker32.png)

Para acabar borraremos todo. s
![1](./img/docker33.png)
