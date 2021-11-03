# Servidor de Impresión en Windows

>Nota 1: Esta practica tiene muchos cambios, muchas cosas no funcionaban correctamente y hay muchos pasos adelante y muchos pasos hacia atrás, Todos los puntos han sido completados con distintos "Softwares" e incluso, sistemas operativos, Tambien hay IP´s distintas ya que se ha variado la practica entre clase y casa.

Para empezar crearemos una maquina servidor, en el instalaremos el rol, servidor de Impresión.

![1](./img/1.png)

![1](./img/2.png)

Ahora instalaremos una impresora de PDF.
>La impresora a lo largo de la practica a cambiado.

![1](./img/3.png)


![1](./img/4.png)

Ahora crearemos un texto para imprimir en local.

![1](./img/5.png)

Comprobamos en la carpeta de destino anteriormente mencionada.

![1](./img/6.png)

## Compartir en red

Ahora Compartiremos en red, para ello primero iremos a administración de impresión, elegiremos la impresora de PDF, iremos a propiedades, al apartado compartir y en esa sección le daremos compartir.

![1](./img/7.png)

Luego iremos al cliente agregaremos la impresora. (la captura define la forma tradicional de agregarlo, otra forma de hacerlo es en el escritorio crear un acceso directo al recurso en red y conectar.)

![1](./img/8.png)

![1](./img/9.png)

Al igual que antes crearemos un TXT y lo mandaremos a imprimir.

![1](./img/112.png)

Comprobaremos.

![1](./img/32.png)

## Acceso web

Ahora cambiamos de impresora ya que la anterior no funciona bien en este punto.

![1](./img/3.1.png)

Antes de nada comprobaremos que en el servidor esta el servicio impresora internet, y lo instalamos. Al hacerlo, iremos al cliente, navegador y en el realizaremos lo siguiente:  
Entraremos con ip-servidor/printers, si esta todo correcto nos saldrá un inicio de sesión para poder entrar.

![1](./img/3.2.png)

Al entrar nos aparecerá las impresoras que tenemos, iremos a propiedades de la impresora.

![1](./img/3.3.png)

Luego en el cliente iremos a agregar impresora y añadiremos el nombre de red que esta definido en las propiedades de la impresora en el apartado "seleccionar una impresora compartida por nombre"

![1](./img/3.4.png)

![1](./img/3.5.png)

Instalamos lo que necesita.

![1](./img/3.6.png)

>No se pudo comprobar la impresión ya que, imprime pero no aparece en cola.

![1](./img/213.png)
