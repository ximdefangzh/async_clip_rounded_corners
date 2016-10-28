//
//  UIImage+Extension.h
//  async_clip_rounded_corners
//
//  Created by ximdefangzh on 16/10/28.
//  Copyright © 2016年 ximdefangzh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
- (void)cornerImageWithSize:(CGSize)size fillColor:(UIColor *)color completeBlock:(void(^)(UIImage *image))block;
@end
