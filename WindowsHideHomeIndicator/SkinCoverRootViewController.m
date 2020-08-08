//
//  SkinCoverRootViewController.m
//  WindowsHideHomeIndicator
//
//  Created by NSDeveloper on 2019/11/18.
//  Copyright © 2019 NSDeveloper. All rights reserved.
//

#import "SkinCoverRootViewController.h"

@interface SkinCoverRootViewController ()
@property (nonatomic,assign) BOOL autoHidden;
@end

@implementation SkinCoverRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CALayer *coverLayer = self.view.layer;
    coverLayer.backgroundColor = [UIColor colorWithRed:231/255.0 green:206/255.0 blue:119/255.0 alpha:1.0].CGColor;
    coverLayer.opacity = 0.2;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateHomeIndicator:) name:@"UpdateHomeIndicatorNotification" object:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)updateHomeIndicator:(NSNotification *)notification {
    BOOL autoHidden = [notification.object boolValue];
    self.autoHidden = autoHidden;
    if (@available(iOS 11.0, *)) {
        [self setNeedsUpdateOfHomeIndicatorAutoHidden];
    }
}

- (BOOL)prefersHomeIndicatorAutoHidden {
    return self.autoHidden;
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    if (orientation==UIInterfaceOrientationLandscapeLeft)return UIInterfaceOrientationMaskLandscapeLeft;
    if (orientation==UIInterfaceOrientationLandscapeRight)return UIInterfaceOrientationMaskLandscapeRight;
    return UIInterfaceOrientationMaskPortrait;
}

@end
