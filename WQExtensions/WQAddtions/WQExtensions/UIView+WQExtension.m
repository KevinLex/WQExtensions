//
//  UIView+WQExtension.m
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import "UIView+WQExtension.h"

@implementation UIView (WQExtension)
/**
 * 返回view的截图
 */
- (UIImage *)wq_snapshotImage {
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return result;
}


/**
 返回从nib创建的view

 @param nibNameOrNil nibName 为空表示和调用此方法的class同名
 @param bundleOrNil bundle 为空表示mainBundle
 @param owner owner
 @return view
 */
+ (id)wq_getinstanceWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)bundleOrNil owner:(id)owner
{
    //default values
    NSString *nibName = nibNameOrNil ?: NSStringFromClass(self);
    NSBundle *bundle = bundleOrNil ?: [NSBundle mainBundle];
    
    //cache nib to prevent unnecessary filesystem access
    static NSCache *nibCache = nil;
    if (nibCache == nil)
    {
        nibCache = [[NSCache alloc] init];
    }
    NSString *pathKey = [NSString stringWithFormat:@"%@.%@", bundle.bundleIdentifier, nibName];
    UINib *nib = [nibCache objectForKey:pathKey];
    if (nib == nil)
    {
        NSString *nibPath = [bundle pathForResource:nibName ofType:@"nib"];
        if (nibPath) nib = [UINib nibWithNibName:nibName bundle:bundle];
        [nibCache setObject:nib ?: [NSNull null] forKey:pathKey];
    }
    else if ([nib isKindOfClass:[NSNull class]])
    {
        nib = nil;
    }
    
    if (nib)
    {
        //attempt to load from nib
        NSArray *contents = [nib instantiateWithOwner:owner options:nil];
        UIView *view = [contents count]? [contents objectAtIndex:0]: nil;
        NSAssert ([view isKindOfClass:self], @"First object in nib '%@' was '%@'. Expected '%@'", nibName, view, self);
        return view;
    }
    
    //return empty view
    return [[[self class] alloc] init];
}

- (void)setWq_height:(CGFloat)wq_height{
    
    CGRect frame = self.frame;
    frame.size.height = wq_height;
    self.frame = frame;
}

- (CGFloat)wq_height {
    
    return CGRectGetHeight(self.bounds);
}

- (void)setWq_width:(CGFloat)wq_width{
    
    CGRect frame = self.frame;
    frame.size.width = wq_width;
    self.frame = frame;
}

- (CGFloat)wq_width {
    
    return CGRectGetWidth(self.bounds);
}

- (void)setWq_x:(CGFloat)wq_x {
    
    CGRect frame = self.frame;
    frame.origin.x = wq_x;
    self.frame = frame;
}

- (CGFloat)wq_x {
    
    return CGRectGetMinX(self.frame);
}

- (void)setWq_y:(CGFloat)wq_y {
    
    CGRect frame = self.frame;
    frame.origin.y = wq_y;
    self.frame = frame;
}

- (CGFloat)wq_y {
    
    return CGRectGetMinY(self.frame);
}

- (void)setWq_origin:(CGPoint)wq_origin {
    
    CGRect frame = self.frame;
    frame.origin = wq_origin;
    self.frame = frame;
}

- (CGPoint)wq_origin {
    
    return self.frame.origin;
}

- (void)setWq_centerX:(CGFloat)wq_centerX {
    
    CGPoint center = self.center;
    center.x = wq_centerX;
    self.center = center;
}

- (CGFloat)wq_centerX {
    
    return CGRectGetMidX(self.frame);
}

- (void)setWq_centerY:(CGFloat)wq_centerY {
    
    CGPoint center = self.center;
    center.y = wq_centerY;
    self.center = center;
}

- (CGFloat)wq_centerY {
    
    return CGRectGetMidY(self.frame);
}

- (void)setWq_size:(CGSize)wq_size {
    
    CGRect frame = self.frame;
    frame.size = wq_size;
    self.frame = frame;
}

- (CGSize)wq_size {
    
    return self.frame.size;
}
@end
