//
//  ViewController.m
//  async_clip_rounded_corners
//
//  Created by ximdefangzh on 16/10/28.
//  Copyright © 2016年 ximdefangzh. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Extension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0, 200, 200)];
    UIImage *image = [UIImage imageNamed:@"Snip20161028_2"];
    
    
    [self.view addSubview:imageView];
    imageView.center = self.view.center;
    
    [image cornerImageWithSize:imageView.bounds.size fillColor:[UIColor whiteColor] completeBlock:^(UIImage *image) {
        imageView.image = image;
    }];
    
    

    
    
//    imageView.layer.cornerRadius = 100;
//    imageView.layer.masksToBounds = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
