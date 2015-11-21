//
//  XZNavigationController.m
//  XZCityFound
//
//  Created by 珍 on 15/11/21.
//  Copyright © 2015年 UME. All rights reserved.
//

#import "XZNavigationController.h"

@interface XZNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation XZNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    //清空interactivePopGestureRecognizer的delegate可以恢复因替换导航条的back按钮失去系统默认手势
    self.interactivePopGestureRecognizer.delegate = nil;
    
    //禁止手势冲突
    self.interactivePopGestureRecognizer.enabled = NO;

}

+ (void)initialize{
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    [bar setBackgroundImage:[UIImage imageNamed:@"recomend_btn_gone"] forBarMetrics:UIBarMetricsDefault];
    // 去掉导航栏的半透明
    bar.translucent = NO;
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [bar setTitleTextAttributes:dict];
    



}
#pragma mark - 手势代理方法
// 是否开始触发手势
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    // 判断下当前控制器是否是跟控制器
    return (self.topViewController != [self.viewControllers firstObject]);
}


@end
