//
//  FirstViewController.m
//  WindowsHideHomeIndicator
//
//  Created by NSDeveloper on 2019/11/18.
//  Copyright © 2019 NSDeveloper. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)prefersHomeIndicatorAutoHidden {
    return YES;
}

@end
