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
//按钮的宽高比例
#define XZBtnScaleForWidth 0.7
#define XZBtnScaleForHeight 0.1

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
- (void)awakeFromNib{
    [self.cityBtn setTitle:@"北京" forState:UIControlStateNormal];
    [self.cityBtn setTitleColor:XZGolbalGreen forState:UIControlStateNormal];
    [self.cityBtn setImage:[UIImage imageNamed:@"city_down"] forState:UIControlStateNormal];
    [self.cityBtn setImage:[UIImage imageNamed:@"city_up"] forState:UIControlStateSelected];
    [self.cityBtn addTarget:self action:@selector(cictyButtonClick:) forControlEvents:UIControlEventTouchDown];

    
    //给按钮添加tag值
    self.homeBtn.tag    = WNXleftButtonTypeHome;
    self.foundBtn.tag   = WNXleftButtonTypeFound;
    self.iconBtn.tag    = WNXleftButtonTypeIcon;
    self.sinaBtn.tag    = WNXleftButtonTypeSina;
    self.weixinBtn.tag  = WNXleftButtonTypeWeiXin;
    self.messageBtn.tag = WNXleftButtonTypeMessage;
    self.setingBtn.tag  = WNXleftButtonTypeSeting;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    CGFloat btnW = self.width * XZBtnScaleForWidth;
    CGFloat btnH = self.height * XZBtnScaleForHeight;
    CGFloat btnX = self.width - btnW / 2;
    
    self.btnHeightConstraint.constant = btnH;
    self.btnWidthConstraint.constant = btnW;
    self.btnLeftConstraint.constant = btnX;
    
    [self.setingBtn layoutIfNeeded];

}

//cictyBtn的点击事件
- (void)cictyButtonClick:(XZCityButton *)sender
{

}

@end
