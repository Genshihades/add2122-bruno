
# Docker-Compose

***Nombre:*** Bruno García Fernández

***Curso:*** 2º de Ciclo Superior de Administración de Sistemas Informáticos en Red.

### ÍNDICE

+ [Docker-Compose](#id1)
+ [Gestionar un contenedor Nginx](#id2)
  + [Gestionar Nginx con un volumen](#id3)
+ [Gestionar un contenedor MYSQL con volumen](#id4)
+ [Gestionar dos contenedores](#id5)


# ***Docker-Compose***. <a name="id1"></a>

Docker Compose es una herramienta que permite simplificar el uso de Docker. Facilitando el diseño y la construcción de servicios o de aplicaciones con múltiples componentes.

Lo que haremos en primer lugar será instalar docker-compose, para ello primero usado el comando

~~~
zypper install docker-compose
~~~

Para comprobar que esta instalado usaremos el comando:

~~~
docker-compose -v
~~~

![1](./img/1.png)

# ***Gestionar un contenedor Nginx***. <a name="id2"></a>

Usando `Docker images`, consultaremos las imagenes instaladas.

![2](./img/2.png)

Ahora no aparece ninguna por que no hay nada instalado.

Buscaremos en docker de nginx, usando: `docker search nginx`,

![3](./img/3.1.png)

Para descargarlo usaremos `docker pull nginx`

![3](./img/3.2.png)

Al descargarlo usando otra vez `docker images`

![3](./img/3.3.png)

# ***Gestionar Nginx con Volumen***. <a name="id3"></a>

Crearemos la carpeta compose21nginx, dentro de ella otro fichero y finalmente un `.html`, en que incluya el nombre y número de puesto de trabajo.

![4](./img/3.png)

Dentro de la carpeta anterior crearemos un docker-compose.yaml con el siguiente contenido:

![5](./img/4.png)

Usamos `docker-compose config` para ver si hay algún error

![6](./img/5.png)

Usamos `docker-compose ps` y comprobamos que todavía no se ha creado el contenedor.

![4](./img/6.png)

Luego usaremos `docker-compose up `y Comprobamos.

![3](./img/7.png)

Ahora haremos un cambio en caliente, para ello iremos al html y añadiremos una linea de texto, en el navegador le daremos a `f5` y comprobamos el cambio

![1](./img/8.png)

Yendo a un segundo terminal, usaremos `docker-compose down` para apagar el terminal

![1321](./img/9.png)

Usaremos `docker-compose ps` para ver que esta el servicio apagado.

![1231](./img/10.png)

![2](./img/11.png)




# ***Gestionar un contenedor Mysql con volumen***. <a name="id4"></a>

Vamos a descargar un contenedor con Mysql, luego de descargarlo, crearemos una carpeta llamada "compose14mysql" y otro dentro de este con el nombre `/data`

![2](./img/12.png)

Al terminar, crearemos otro documento de docker con el siguiente argumento:

![2](./img/13.png)

en el fichero definiremos la carpeta /data como el lugar de almacenamiento.

Usaremos `Docker-compose up`.

![2](./img/14.png)

La primera comprobación será ver si el puerto de mysql esta abierto.

![2](./img/15.png)

Entramos a mysql, crearemos una base de datos con el nombre "Alumno14" y luego usando `show databases`, veremos las bases de datos que hay.

![2](./img/16.png)

Nuevamente, apagaremos el servicio.

![2](./img/17.png)

Comprobamos que esta apagado.

![2](./img/18.png)

Ahora vamos a comprobar la persistencia de los datos en mysql, para ello levantaremos el servicio y ejecutaremos mysql para ver si esta los datos anteriores.


![2](./img/19.png)

Comprobamos.

![2](./img/20.png)

# ***Gestionar dos contenedores***. <a name="id5"></a>

Ahora vamos a tratar de gestionar dos contenedores, en el usaremos una base de datos e instalaremos wordpress, primero crearemos una carpeta con el nombre `compose14wp` y dentro dos subcarpetas y el fichero de docker.

![2](./img/21.png)

En el fichero de docker usaremos la siguiente estructura.

![2](./img/23.png)

Arrancaremos docker y comprobamos.

![2](./img/22.png)
