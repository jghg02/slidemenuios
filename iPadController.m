//
//  iPadController.m
//  SlideMenu
//
//  Created by Josue Hernandez on 1/24/15.
//  Copyright (c) 2015 Josue Hernandez. All rights reserved.
//

#import "iPadController.h"
#import "SWRevealViewController.h"

@interface iPadController ()

@end

@implementation iPadController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setButtonLeftStatusBar];
}

-(void)setButtonLeftStatusBar{
    
    //creamos el boton
    UIButton *configButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, self.navigationController.navigationBar.frame.size.height - 20)];
    
    //le asignamos un color de background
    [configButton setBackgroundColor:[UIColor blackColor]];
    
    //asignamos un unico a nuestro boton
    [configButton setBackgroundImage:[UIImage imageNamed:@"icon_setting.png"] forState:UIControlStateNormal];
    
    //seteamos el boton en el lado derecho de nuestro navigation var
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:configButton];
    //self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:configButton];
    
    //agregamos el target y el selector de la libreria de SlideMenu para que muestre el menu que creamos en el StoryBoard
    [configButton addTarget:self.revealViewController action:@selector( revealToggle: ) forControlEvents:UIControlEventTouchUpInside];
    
    //para setear cuanto ancho quieres que se vea del menu
    self.revealViewController.rearViewRevealWidth = 400;
    
    //Para agregar el gesto
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
