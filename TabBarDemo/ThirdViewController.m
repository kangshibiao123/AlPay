//
//  ThirdViewController.m
//  TabBarDemo
//
//  Created by mc on 15/12/9.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)bt:(id)sender{
 
    KKKViewController * kc =[[KKKViewController alloc]init];
    kc.tabBarController.tabBar.hidden = YES;
    
    [self.navigationController pushViewController:kc animated:YES];
    
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
