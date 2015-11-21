//
//  XZBaseVC.m
//  XZCityFound
//
//  Created by 珍 on 15/11/21.
//  Copyright © 2015年 UME. All rights reserved.
//

#import "XZBaseVC.h"

@interface XZBaseVC ()

@end

@implementation XZBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;

}

@end
