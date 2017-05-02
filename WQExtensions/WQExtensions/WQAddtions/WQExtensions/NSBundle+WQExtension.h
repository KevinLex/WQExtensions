//
//  NSBundle+WQExtension.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/28.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (WQExtension)
/**
 返回命名空间
 */
- (NSString *)wq_getNameSpace;
/**
 返回当前版本号
 */
- (NSString *)wq_getCurrentVersion;
@end
