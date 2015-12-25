//
//  KSTabBarVC.m
//  TabBarDemo
//
//  Created by mc on 15/12/9.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "KSTabBarVC.h"

@interface KSTabBarVC ()

@end

@implementation KSTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.imageViewsArr = @[self.firstImage,self.secondImage,self.thirdImage];
    
    if (self.selectedIndex == 0) {
        
        UIViewController * vc = [self.viewContrllers objectAtIndex:0];
        [self.view addSubview:vc.view];
        [self.view sendSubviewToBack:vc.view];
        _firstImage.image = [UIImage imageNamed:_selestArr[0]];
        
        
        
    }
}
- (IBAction)btnClock:(UIButton *)sender {
    

    [self setSelectedIndex:(int)sender.tag];
    
    for (int i = 0; i <_imageViewsArr.count; i++) {
        
        UIImageView * image1 = _imageViewsArr[i];
        
        image1.image = [UIImage imageNamed:_imagesArr[i]];
        
    }
    
    UIImageView * imageV = _imageViewsArr[sender.tag];
    
    imageV.image = [UIImage imageNamed:_selestArr[sender.tag]];
    

    
}
- (void)setSelectedIndex:(int)selectedIndex{

    if (_selectedIndex ==selectedIndex)
    {
        return;
    }
    

    if (_selectedIndex >= 0)
    {

        UIViewController *newViewcontro =[self.viewContrllers objectAtIndex:_selectedIndex];
        [newViewcontro.view removeFromSuperview];
    }
    
    UIViewController *newViewContro =[self.viewContrllers objectAtIndex:selectedIndex];
    [self.view addSubview:newViewContro.view];
    [self.view sendSubviewToBack:newViewContro.view];
    
    _selectedIndex =selectedIndex;

}

- (void)hiddTabr{
    
    self.backView.hidden = YES;
    
}
- (void)showTbar{
    
    self.backView.hidden = NO;
    
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
