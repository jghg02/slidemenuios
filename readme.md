# Slide Menu iOS. 

Para poder crear un __slide menu__ en necesario importar la libreria [__SWRevealViewController__](https://github.com/John-Lluch/SWRevealViewController)


1.- Creamos un grupo en nuestro proyecto y copiaremos los siguientes archivos __SWRevealViewController.h__ y __SWRevealViewController.m__ dentro de nuestro proyecto. 

![](https://raw.githubusercontent.com/jghg02/slidemenuios/master/img/1.png)

2.- Creamos nuestro _StoryBoard_ tanto para __iPhone__ como para __iPad__

3.- Para poder que el slide menu se puede integrar a nuesta app. el __StoryBoard__ debe estar configurado de una forma especifica la cual es:

- Se debe crear un __ViewController__ haciendo referencia a la clase __SWRevealViewController__ 

![](https://raw.githubusercontent.com/jghg02/slidemenuios/master/img/2.png)

__Importante:__ Este _ViewController_ debe ser el principal (__is initial View Controller__)

4.- Se deben agregar un nuevo __ViewController__ y un __NavigationController__ a nuesto _StoryBoard_ 

![](https://raw.githubusercontent.com/jghg02/slidemenuios/master/img/3.png)

5.- Creamos el __Segue__ entre nuestro view controller inicial el  view controller que hemos agregado. Es importante que ese __Segue__ que hemos creado la clase debe ser __SWRevealViewControllerSegueSetController__ de tipo __Custom__ y con identifier __sw_right__ (Menu derecho)

![](https://raw.githubusercontent.com/jghg02/slidemenuios/master/img/4.png)

6.- Luego creamos otro __Segue__ que va de nuestro view controller inical al __Navigation Controller__. La clase debe ser __SWRevealViewControllerSegueSetController__ tipo __Custom__ y con Identifier __sw_front__

![](https://raw.githubusercontent.com/jghg02/slidemenuios/master/img/5.png)

7.- Luego creo el __Segue__ entre el __Navigation Controller__ y mi __View Controller__ donde esta la vista con la informacion que voy a presentar al usuario.

![](https://raw.githubusercontent.com/jghg02/slidemenuios/master/img/6.png)


