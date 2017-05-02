//
//  UIBarButtonItem+WQExtension.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/28.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WQExtension)
/**
 创建文字barItembarItem
 
 @param title 文字
 @param font 字体大小
 @param color 字体颜色
 @param target target
 @param action action
 @return 按钮
 */
+ (UIBarButtonItem *)wq_getBarButtonItem:(NSString*)title fontSize:(CGFloat)font titleColor:(UIColor *)color target:(id)target action:(SEL)action;

/**
 创建图片barItembarItem
 
 @param image 图片
 @param selectedImage 选中图片
 @param size 按钮size
 @param target target
 @param action action
 @return 按钮
 */
+ (UIBarButtonItem *)wq_getBarButtonItemByImage:(UIImage*)image selectedImage:(UIImage*)selectedImage buttonSize:(CGSize)size target:(id)target action:(SEL)action;
@end
