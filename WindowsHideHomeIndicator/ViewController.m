//
//  ViewController.m
//  WindowsHideHomeIndicator
//
//  Created by NSDeveloper on 2019/11/25.
//  Copyright © 2019 NSDeveloper. All rights reserved.
//

#import "ViewController.h"
#import "SkinCoverTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.userInteractionEnabled = YES;
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backAction)];
    gesture.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:gesture];
    
}

- (void)backAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //???: A solution can automatically work?
    [SkinCoverTool hideHomeIndicator:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [SkinCoverTool hideHomeIndicator:NO];
}

- (BOOL)prefersHomeIndicatorAutoHidden {
    return YES;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeRight;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
