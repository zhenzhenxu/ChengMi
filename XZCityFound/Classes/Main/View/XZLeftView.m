//
//  XZLeftView.m
//  XZCityFound
//
//  Created by 珍 on 15/11/21.
//  Copyright © 2015年 UME. All rights reserved.
//

#import "XZLeftView.h"
#import "XZCityButton.h"
#import "XZMenuButton.h"
@interface XZLeftView()
/** 城市选择 */
@property (weak, nonatomic) IBOutlet XZCityButton *cityBtn;
/** 首页 */
@property (weak, nonatomic) IBOutlet XZMenuButton *homeBtn;
/** 登录 */
@property (weak, nonatomic) IBOutlet XZMenuButton *iconBtn;
/** 发现 */
@property (weak, nonatomic) IBOutlet XZMenuButton *foundBtn;
/** 新浪微博 */
@property (weak, nonatomic) IBOutlet XZMenuButton *sinaBtn;
/**  微信 */
@property (weak, nonatomic) IBOutlet XZMenuButton *weixinBtn;
/** 消息 */
@property (weak, nonatomic) IBOutlet XZMenuButton *messageBtn;
/**  设置 */
@property (weak, nonatomic) IBOutlet XZMenuButton *setingBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *btnHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *btnWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *btnLeftConstraint;

@end
@implementation XZLeftView

@end
