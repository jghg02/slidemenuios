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

__Esta es la configuracion que se hace par colocar un menu derecho__

Ya teniendo todo esto vamos al __viewDidLoad__ de nuestro controlador y seteamos nuestro icono en el _Navigation Bar_ de nuestra app. 

Lo primero que creasmo es nuestro _Botton_ de la siguiente manera:

		UIButton *configButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, self.navigationController.navigationBar.frame.size.height - 20)];
		
Aqui creamos nuestro Botton seteandole la posision dentro del Navigation Bar.

Le colocamos un color de fondo y una imagen.

	[configButton setBackgroundColor:[UIColor blackColor]];
	[configButton setBackgroundImage:[UIImage imageNamed:@"icon_setting.png"] forState:UIControlStateNormal];
	
Seteamos el boton del lado derecho de nuesta Navigation Bar.

	    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:configButton];
	
Ahora le vamos a especificar el __target__ y el __selector__ para que al momento de hacer tap sobre este boton se vea el menu que creamos en el _StoryBoard_

	[configButton addTarget:self.revealViewController action:@selector( rightRevealToggle: ) forControlEvents:UIControlEventTouchUpInside];
        
    
__Importante:__  Para poder hacer esto es necesario realizar el import de la libreria __SWRevealViewController__ de la siguente manera:

	#import "SWRevealViewController.h"
	
	
Si quieres setear el ancho del menu, agregamos la siguiente linea.

	self.revealViewController.rightViewRevealWidth = 100;
	
	
	
Ejecutamos y este es e resultado.

![](https://raw.githubusercontent.com/jghg02/slidemenuios/master/img/7.png)
	



