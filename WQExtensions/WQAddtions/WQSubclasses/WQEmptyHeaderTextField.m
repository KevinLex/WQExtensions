//
//  WQEmptyHeaderTextField.m
//  TestAddtions
//
//  Created by 吴强 on 2017/4/28.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import "WQEmptyHeaderTextField.h"

@implementation WQEmptyHeaderTextField

- (CGRect)textRectForBounds:(CGRect)bounds{
    return CGRectInset(bounds, 15, 0);
}
- (CGRect)editingRectForBounds:(CGRect)bounds{
    return CGRectInset(bounds, 15, 0);
}

@end
