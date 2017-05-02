//
//  UIColor+WQExtension.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (WQExtension)


/**
 使用 16 进制数字创建颜色，例如 0xFF0000 创建红色

 @param hex 16进制无符号32位整数
 @return 颜色
 */
+ (instancetype)wq_colorWithHex:(uint32_t)hex;

/**
 生成随机颜色

 @return 随机颜色
 */
+ (instancetype)wq_randomColor;


/**
 使用 R / G / B 数值创建颜色

 @param red red
 @param green green
 @param blue blue
 @return 颜色
 */
+ (instancetype)wq_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue;


/**
 使用 R / G / B / A数值创建颜色

 @param red red
 @param green green
 @param blue blue
 @param alpa alpa
 @return 颜色
 */
+ (instancetype)wq_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpa:(CGFloat)alpa;


/**
 使用 16 进制string创建颜色，例如 F8F8F9

 @param colorString 十六进制NSString
 @param alpha 透明度
 @return 颜色
 */
+ (UIColor *)wq_colorWithHexString:(NSString *)colorString WithAlpha:(float)alpha;
@end
