//
//  ViewController.m
//  SlideMenu
//
//  Created by Josue Hernandez on 1/23/15.
//  Copyright (c) 2015 Josue Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setButtonRightStatusBar];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(void)setButtonRightStatusBar{

    //creamos el boton
    UIButton *configButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, self.navigationController.navigationBar.frame.size.height - 20)];
    
    //le asignamos un color de background
    [configButton setBackgroundColor:[UIColor blackColor]];
    
    //asignamos un unico a nuestro boton
    [configButton setBackgroundImage:[UIImage imageNamed:@"icon_setting.png"] forState:UIControlStateNormal];
    
    //seteamos el boton en el lado derecho de nuestro navigation var
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:configButton];
    //self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:configButton];

    //agregamos el target y el selector de la libreria de SlideMenu para que muestre el menu que creamos en el StoryBoard
    [configButton addTarget:self.revealViewController action:@selector( rightRevealToggle: ) forControlEvents:UIControlEventTouchUpInside];
    
    //para setear cuanto ancho quieres que se vea del menu
    //self.revealViewController.rightViewRevealWidth = 30;
}

@end
