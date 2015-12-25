//
//  ViewController.m
//  TabBarDemo
//
//  Created by mc on 15/12/9.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "ViewController.h"
#import "KSTabBarVC.h"
@interface ViewController ()
{
    KSTabBarVC * ka;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIWindow * win = [[UIApplication sharedApplication].delegate window];
    
    FirstViewController * first  =[[FirstViewController alloc]init];
    SecondViewController * second = [[SecondViewController alloc]init];
    ThirdViewController * third = [[ThirdViewController alloc]init];
    
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:first];
    UINavigationController * nav1 = [[UINavigationController alloc]initWithRootViewController:second];
    UINavigationController * nav2 = [[UINavigationController alloc]initWithRootViewController:third];

    
    ka = [[KSTabBarVC alloc]init];
    ka.imagesArr = @[@"shopping-basket",@"图层-101",@"user1"];
    ka.viewContrllers = @[nav,nav1,nav2];
    ka.selectedIndex = 0;
    
    ka.selestArr = @[@"shopping-basket1",@"图层-10",@"user"];
  
    
    win.rootViewController = ka;
    
}
- (void)hiddBar{
    
    [ka hiddTabr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
