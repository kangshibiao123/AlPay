//
//  KSTabBarVC.h
//  TabBarDemo
//
//  Created by mc on 15/12/9.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KSTabBarVC : UIViewController

@property (weak, nonatomic) IBOutlet UILabel * firstLable;
@property (weak, nonatomic) IBOutlet UIImageView * firstImage;
@property (weak, nonatomic) IBOutlet UILabel *secondLable;
@property (weak, nonatomic) IBOutlet UIImageView * secondImage;
@property (weak, nonatomic) IBOutlet UILabel * thirdLable;
@property (weak, nonatomic) IBOutlet UIImageView * thirdImage;
@property (weak, nonatomic) IBOutlet UIView * backView;

@property (strong, nonatomic) NSArray * imagesArr;
@property (strong, nonatomic) NSArray * selestArr;

@property (strong, nonatomic) NSArray * imageViewsArr;

@property (nonatomic,assign)int selectedIndex;
@property (strong, nonatomic) NSArray * viewContrllers;

- (void)hiddTabr;




@end
