//
//  UIScreen+WQExtension.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (WQExtension)
/**
 * 屏幕宽度
 */
+ (CGFloat)wq_screenWidth;
/**
 * 屏幕高度
 */
+ (CGFloat)wq_screenHeight;
/**
 * 屏幕分辨率
 */
+ (CGFloat)wq_scale;
@end
