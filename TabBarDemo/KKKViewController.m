//
//  KKKViewController.m
//  TabBarDemo
//
//  Created by mc on 15/12/10.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "KKKViewController.h"
#import "ViewController.h"
@interface KKKViewController ()

@end

@implementation KKKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[[ViewController alloc]init] hiddBar];
  UISwipeGestureRecognizer*  ecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    ecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:ecognizer];
//    修改UISwipeGestureRecognizerDirectionLeft;即可
}
- (void)handleSwipeFrom:(UISwipeGestureRecognizer *)se{
    
    NSLog(@"sdfds");
    
    [self.navigationController popViewControllerAnimated:YES];
    
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
