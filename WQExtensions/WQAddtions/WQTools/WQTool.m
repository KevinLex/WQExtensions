//
//  WQTool.m
//  TestAddtions
//
//  Created by 吴强 on 2017/4/28.
//  Copyright © 2017年 ChongqingWirelessOasisCommunicationTechnology. All rights reserved.
//

#import "WQTool.h"

@implementation WQTool

/**
  文件是否存在

 @param filename 全路径
 @return YES表示文件已经存在 NO表示不存在
 */
+(BOOL)wq_existsFile:(NSString *)filename{
    NSFileManager *manager = [NSFileManager defaultManager];
    return [manager fileExistsAtPath:filename];
}

/**
 删除指定的文件
 @param allPath 文件的全路径(包含要删除文件的名称)
 */
+(void)wq_deleteFileByPath:(NSString *)allPath{
    NSFileManager *manager = [NSFileManager defaultManager];
    [manager removeItemAtPath:allPath error:nil];
}

/**
 删除指定目录下指定扩展名的所有文件
 @param dirctory 目录路径
 @param suffix   后缀名
 */
+(void)wq_deleteFileByDirctory:(NSString *)dirctory extension:(NSString *)suffix{
    NSFileManager *manager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:dirctory];
    NSString *filename ;
    while (filename = [direnum nextObject]) {
        if ([[filename pathExtension] isEqualToString:suffix]) {
            [WQTool wq_deleteFileByPath:[dirctory stringByAppendingString:filename]];
        }
    }
}

/**
 判断图片是否是jpg
 //1.JPEG
 //- 文件头标识 (2 bytes): $ff, $d8 (SOI) (JPEG 文件标识)
 //- 文件结束标识 (2 bytes): $ff, $d9 (EOI)
 //3.PNG
 //- 文件头标识 (8 bytes)   89 50 4E 47 0D 0A 1A 0A
 */
+ (int)wq_isJPEGValid:(NSData *)jpeg
{
    if ([jpeg length] < 4) return 1;
    const unsigned char * bytes = (const unsigned char *)[jpeg bytes];
    if (bytes[0] != 0xFF || bytes[1] != 0xD8) return 2;
    if (bytes[[jpeg length] - 2] != 0xFF ||
        bytes[[jpeg length] - 1] != 0xD9) return 3;
    return 0;
}


/**
 判断图片是否是png
 */
+ (int)wq_isPNGValid:(NSData *)png
{
    if ([png length] < 8) return 1;
    const unsigned char * bytes = (const unsigned char *)[png bytes];
    if (bytes[0] != 0x89 || bytes[1] != 0x50 || bytes[2] != 0x4E || bytes[3] != 0x47 || bytes[4] != 0x0D || bytes[5] != 0x0A || bytes[6] != 0x1A || bytes[7] != 0x0A  ) return 2;
    return 0;
}


/**
 判断图片是否完整
 */
+ (BOOL)wq_isImageValid:(NSData *)imageData
{
    int isValidNum =[self wq_isJPEGValid:imageData];
    int  isValidPangNum =[self wq_isPNGValid:imageData];
    BOOL isValid =NO;
    if (!isValidNum|| !isValidPangNum) {
        isValid =YES;
    }
    
    return isValid;
}
/**
 * 跑马灯效果
 **/
+(void)wq_executePaoMaDengAnim:(UILabel *)labPaoMaDeng{
    
    CGFloat labelX = labPaoMaDeng.frame.origin.x;
    CGRect frame = labPaoMaDeng.frame;
    frame.origin.x = frame.size.width+labelX;
    labPaoMaDeng.frame = frame;
    
    [UIView beginAnimations:@"testAnimation" context:NULL];
    [UIView setAnimationDuration:8.8f];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationRepeatCount:999999];
    
    frame = labPaoMaDeng.frame;
    frame.origin.x = -frame.size.width+labelX;
    labPaoMaDeng.frame = frame;
    
    [UIView commitAnimations];
}


@end
