//
//  SkinCoverRootViewController.m
//  WindowsHideHomeIndicator
//
//  Created by NSDeveloper on 2019/11/18.
//  Copyright © 2019 NSDeveloper. All rights reserved.
//

#import "SkinCoverRootViewController.h"

@interface SkinCoverRootViewController ()

@end

@implementation SkinCoverRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect frame = self.view.frame;
    CALayer *coverLayer = [CALayer layer];
    coverLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    coverLayer.backgroundColor = [UIColor colorWithRed:231/255.0 green:206/255.0 blue:119/255.0 alpha:1.0].CGColor;
    coverLayer.opacity = 0.2;
    [self.view.layer addSublayer:coverLayer];
}

@end
