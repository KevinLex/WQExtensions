//
//  UIScreen+WQExtension.m
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import "UIScreen+WQExtension.h"

@implementation UIScreen (WQExtension)
+ (CGFloat)wq_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)wq_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)wq_scale {
    return [UIScreen mainScreen].scale;
}
@end
