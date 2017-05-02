//
//  WQTool.h
//  TestAddtions
//
//  Created by 吴强 on 2017/4/28.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WQTool : NSObject

/**
 文件是否存在
 
 @param filename 全路径
 @return YES表示文件已经存在 NO表示不存在
 */
+(BOOL)wq_existsFile:(NSString *)filename;

/**
 删除指定的文件
 @param allPath 文件的全路径(包含要删除文件的名称)
 */
+(void)wq_deleteFileByPath:(NSString *)allPath;

/**
 删除指定目录下指定扩展名的所有文件
 @param dirctory 目录路径
 @param suffix   后缀名
 */
+(void)wq_deleteFileByDirctory:(NSString *)dirctory extension:(NSString *)suffix;

/**
 判断图片是否是jpg
 //1.JPEG
 //- 文件头标识 (2 bytes): $ff, $d8 (SOI) (JPEG 文件标识)
 //- 文件结束标识 (2 bytes): $ff, $d9 (EOI)
 //3.PNG
 //- 文件头标识 (8 bytes)   89 50 4E 47 0D 0A 1A 0A
 */
+ (int)wq_isJPEGValid:(NSData *)jpeg;


/**
 判断图片是否是png
 */
+ (int)wq_isPNGValid:(NSData *)png;


/**
 判断图片是否完整
 */
+ (BOOL)wq_isImageValid:(NSData *)imageData;

/**
 * 跑马灯效果
 **/
+(void)wq_executePaoMaDengAnim:(UILabel *)labPaoMaDeng;
@end
