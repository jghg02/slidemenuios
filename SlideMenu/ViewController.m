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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    UIButton *configButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, self.navigationController.navigationBar.frame.size.height - 20)];
    [configButton addTarget:self.revealViewController action:@selector( rightRevealToggle: ) forControlEvents:UIControlEventTouchUpInside];
    
    [configButton setBackgroundImage:[UIImage imageNamed:@"icon_setting.png"] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:configButton];
}

@end
