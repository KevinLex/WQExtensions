//
//  CALayer+WQExtension.m
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import "CALayer+WQExtension.h"
#import <objc/runtime.h>


@implementation CALayer (WQExtension)

- (UIColor *)borderColorFromUIColor {
    return objc_getAssociatedObject(self, @selector(borderColorFromUIColor));
}

-(void)setBorderColorFromUIColor:(UIColor *)color
{
    objc_setAssociatedObject(self, @selector(borderColorFromUIColor), color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self setBorderColorFromUI:self.borderColorFromUIColor];
}

- (void)setBorderColorFromUI:(UIColor *)color
{
    self.borderColor = color.CGColor;
}

- (UIColor *)shadowColorFromUIColor {
    
    return objc_getAssociatedObject(self, @selector(shadowColorFromUIColor));
    
}

-(void)setShadowColorFromUIColor:(UIColor *)color
{
    objc_setAssociatedObject(self, @selector(shadowColorFromUIColor), color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self setShadowColorFromUI:self.borderColorFromUIColor];
    
}

- (void)setShadowColorFromUI:(UIColor *)color
{
    self.shadowColor = color.CGColor;
}
@end
