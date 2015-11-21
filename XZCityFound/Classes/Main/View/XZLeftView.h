//
//  XZLeftView.h
//  XZCityFound
//
//  Created by 珍 on 15/11/21.
//  Copyright © 2015年 UME. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Inspectable.h"

//LeftView按钮类型
typedef NS_ENUM(NSInteger, WNXleftButtonType) {
    WNXleftButtonTypeHome = 0,
    WNXleftButtonTypeFound,
    WNXleftButtonTypeIcon,
    WNXleftButtonTypeSina,
    WNXleftButtonTypeWeiXin,
    WNXleftButtonTypeMessage,
    WNXleftButtonTypeSeting
};
@interface XZLeftView : UIView

@end
