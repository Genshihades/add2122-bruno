<center>

# Estructura iterativa

</center>


- ***Nombre:*** Bruno García Fernández
- ***Curso:*** 2º de Ciclo Superior de Administración de Sistemas Informáticos en Red.

### ÍNDICE
+ ["Bash" Creado y Borrado de usuarios ](#id1)
+ ["Bash" Creado y borrado de usuarios con argumentos ](#id2)
+ ["Ruby" Creado y Borrado de usuarios ](#id3)
+ ["Ruby" Creado y borrado de usuarios con argumentos ](#id4)


#### "Bash" Creado y Borrado de usuarios. <a name="id1"></a>

Vamos a iterar, iteración significa repetir varias veces un proceso con la intención de alcanzar una meta deseada, objetivo o resultado. Es distinto de crear una secuencia ya que "iterando" no tenemos que repetir la secuencia en el script sino simplemente preparar el programa para que repita lo que quieras hacer.

Vamos a preparar dos programas, una de creado y otra de borrado de usuarios.

Empezamos con la creación de usuarios pero antes de ir con el script, vamos a explicar un poco algo de sintaxis de iterar. La estructura más simple en "Bash" es la siguiente:
~~~
for "ENTIDAD" in "VALORES" do
    " HACER ALGO CON CADA "ENTIDAD" "
done
~~~

Esto es un bucle usando `for` por ello, con cada entidad tiene un valor, puede ser de un número entero a un rango de valores.

Teniendo en cuenta eso, en el siguiente comando crearemos cinco usuarios, este dato lo expresamos en el `for` usando `{n..n1}` (donde n es el número más bajo y n1 es el más grande) abrimos el bucle con un `do` y dentro pondremos las instrucciones que queremos, como en este caso queremos crear usuarios usaremos los comandos de creación de usuarios de GNU/Linux, para darle un nombre personalizado usando comillas indicaremos `$"ENTIDAD"` y añadirá el valor de la entidad a lo que queramos, en este caso lo usaremos para darle el nombre `"alumno"$1"r"`, Haremos lo mismo para la contraseña y con el `echo`.
cerraremos el bucle con `Done`.

![1](./img/1.png)

Ahora lo ejecutamos para comprobar que funciona.

![1](./img/2.png)

Para el borrado vemos que es exactamente igual que para crear, ajustándolo para borrar usuarios.

![1](./img/3.png)

*Comprobación*

![1](./img/4.png)

#### "Bash" Creado y Borrado de usuarios con argumentos. <a name="id2"></a>

Ahora rescatado el programa "elegir14arg" vamos a modificarlo para que use los script que hemos hecho antes y vamos a añadirle la opción "e" que usaremos para comprobar que los usuarios se crean o se borrar.


![1](./img/5.png)

Comprobamos usando -c.

![1](./img/6.png)

Comprobamos usando -e y vemos que crea los usuarios satisfactoriamente.

![1](./img/7.png)

Usamos -b para borrar los usuarios.

![1](./img/8.png)

Y para acabar, usando -e podemos ver que se han borrado satisfactoriamente.

![1](./img/9.png)

#### "Ruby" Creado y Borrado de usuarios. <a name="id3"></a>

Vamos con Ruby. Con Ruby prácticamente es igual que con bash, usamos bucles con una entidad y valor para que repita ese valor las veces que queramos. La diferencia es al personalizar el nombre de usuario que para añadir la entidad como valor tenemos que usar `#{entidad}`.


Aquí podemos el archivo para crear usuarios usando ruby.


![1](./img/10.png)

![1](./img/11.png)

Y este es de Borrado.

![1](./img/12.png)

![1](./img/13.png)

#### "Ruby" Creado y Borrado de usuarios con argumentos. <a name="id4"></a>

Al igual que antes, rescatamos el elegir14arg de ruby y lo modificamos usando los nuevos scripts de creado y borrado, y añadiendo la opción "e"

![1](./img/14.png)

Ejecutamos el programa eligiendo "c".

![1](./img/15.png)

Luego eligiendo "e" para comprobar que los usuarios han sido creados.

![1](./img/16.png)

Ahora borramos los usuarios eligiendo "b".

![1](./img/17.png)

Y finalmente volvemos a comprobar usando "e"

![1](./img/18.png)
