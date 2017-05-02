//
//  NSBundle+WQExtension.m
//  TestAddtions
//
//  Created by 吴强 on 2017/4/28.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import "NSBundle+WQExtension.h"

@implementation NSBundle (WQExtension)

/**
 返回命名空间
 */
- (NSString *)wq_getNameSpace{
    NSString *nameSpcace = self.infoDictionary[@"CFBundleName"];
    if (nameSpcace != nil) {
        return nameSpcace;
    }else{
        return @"";
    }
}

/**
 返回当前版本号
 */
- (NSString *)wq_getCurrentVersion{
    NSString *currentVersion = self.infoDictionary[@"CFBundleShortVersionString"];
    if (currentVersion != nil) {
        return currentVersion;
    }else{
        return @"1.0";
    }
}

@end
