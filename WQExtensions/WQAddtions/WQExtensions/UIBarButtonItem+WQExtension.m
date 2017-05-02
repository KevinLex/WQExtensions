//
//  UIBarButtonItem+WQExtension.m
//  TestAddtions
//
//  Created by 吴强 on 2017/4/28.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import "UIBarButtonItem+WQExtension.h"

@implementation UIBarButtonItem (WQExtension)

/**
 创建文字barItembarItem

 @param title 文字
 @param font 字体大小
 @param color 字体颜色
 @param target target
 @param action action
 @return 按钮
 */
+ (UIBarButtonItem *)wq_getBarButtonItem:(NSString*)title fontSize:(CGFloat)font titleColor:(UIColor *)color target:(id)target action:(SEL)action{
    CGSize titlesize = [title boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options: NSStringDrawingTruncatesLastVisibleLine |  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil].size;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, titlesize.width+10, 28);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateSelected];
    [button setTitleColor:color forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    
    UIBarButtonItem *addBtnItem=[[UIBarButtonItem alloc] initWithCustomView:button];
    return addBtnItem;
}

/**
 创建图片barItembarItem

 @param image 图片
 @param selectedImage 选中图片
 @param size 按钮size
 @param target target
 @param action action
 @return 按钮
 */
+ (UIBarButtonItem *)wq_getBarButtonItemByImage:(UIImage*)image selectedImage:(UIImage*)selectedImage buttonSize:(CGSize)size target:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, size.width, size.height);
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:selectedImage forState:UIControlStateSelected];
    
    UIBarButtonItem *addBtnItem=[[UIBarButtonItem alloc] initWithCustomView:button];
    return addBtnItem;
}
@end
