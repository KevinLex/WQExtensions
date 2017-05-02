//
//  UIView+WQExtension.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WQExtension)

@property (assign, nonatomic) CGFloat wq_height;
@property (assign, nonatomic) CGFloat wq_width;
@property (assign, nonatomic) CGFloat wq_x;
@property (assign, nonatomic) CGFloat wq_y;
@property (assign, nonatomic) CGPoint wq_origin;
@property (assign, nonatomic) CGSize  wq_size;
@property (assign, nonatomic) CGFloat wq_centerX;
@property (assign, nonatomic) CGFloat wq_centerY;
/**
 * 返回view的截图
 */
- (UIImage *)wq_snapshotImage;

/**
 返回从nib创建的view
 
 @param nibNameOrNil nibName 为空表示和调用此方法的class同名
 @param bundleOrNil bundle 为空表示mainBundle
 @param owner owner
 @return view
 */
+ (id)wq_getinstanceWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)bundleOrNil owner:(id)owner;

@end
