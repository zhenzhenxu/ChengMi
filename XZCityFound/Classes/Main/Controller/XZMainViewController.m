//
//  XZMainViewController.m
//  XZCityFound
//
//  Created by 珍 on 15/11/21.
//  Copyright © 2015年 UME. All rights reserved.
//

#import "XZMainViewController.h"
#import "XZFoundVC.h"
#import "XZLoginVC.h"
#import "XZWeiboVC.h"
#import "XZSetingVC.h"
#import "XZWeixinVC.h"
#import "XZMesseageVC.h"
#import "XZHomeVC.h"



@interface XZMainViewController ()

@end

@implementation XZMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (void)buildUI{
    // 添加子控制器
    NSArray *classNames = @[@"XZHomeVC",@"XZFoundVC",@"XZLoginVC",@"XZWeiboVC",@"XZWeixinVC",@"XZMesseageVC",@"XZSetingVC"];
    for (NSString *className in classNames) {
        UIViewController *vc = (UIViewController *)[[NSClassFromString(className) alloc]init];
        
    }
    
    

}



@end
