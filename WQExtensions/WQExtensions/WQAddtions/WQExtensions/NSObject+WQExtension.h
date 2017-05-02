//
//  NSObject+WQExtension.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/27.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (WQExtension)


#pragma mark - Runtime

/**
 使用字典数组创建当前类对象的数组

 @param array 字典数组
 @return 当前类对象的数组
 */
+ (NSArray *)wq_objectsWithArray:(NSArray *)array;


/**
 返回当前类的属性数组

 @return 属性数组
 */
+ (NSArray *)wq_propertiesList;


/**
 返回当前类的成员变量数组

 @return 成员变量数组
 */
+ (NSArray *)wq_ivarsList;
@end
