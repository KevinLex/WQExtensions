//
//  CALayer+WQExtension.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import <UIKit/UIKit.h>
@interface CALayer (WQExtension)

// XIB中使用value设置边框颜色
@property(nonatomic, strong) UIColor *borderColorFromUIColor;
- (void)setBorderColorFromUIColor:(UIColor *)color;

// XIB中使用value设置阴影颜色
@property(nonatomic, strong) UIColor *shadowColorFromUIColor;
- (void)setShadowColorFromUIColor:(UIColor *)color;
@end
