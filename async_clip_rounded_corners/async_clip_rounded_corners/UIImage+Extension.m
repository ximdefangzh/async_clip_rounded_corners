//
//  UIImage+Extension.m
//  async_clip_rounded_corners
//
//  Created by ximdefangzh on 16/10/28.
//  Copyright © 2016年 ximdefangzh. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
- (void)cornerImageWithSize:(CGSize)size fillColor:(UIColor *)color completeBlock:(void (^)(UIImage *))block{
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSTimeInterval starttime = CACurrentMediaTime();
        
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        
        UIGraphicsBeginImageContextWithOptions(size, YES, 0);
        
        [color setFill];
        UIRectFill(rect);
        
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
        
        [path addClip];
        
        [self drawInRect:rect];
        
        UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        NSTimeInterval endtime = CACurrentMediaTime();
        
        NSLog(@"%f",endtime - starttime);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            if(block){
                block(result);
            }
        });

    });
    
    
//    return result;
}
@end
