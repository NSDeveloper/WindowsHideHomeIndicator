//
//  SkinCoverTool.m
//  WindowsHideHomeIndicator
//
//  Created by NSDeveloper on 2020/8/8.
//  Copyright © 2020 NSDeveloper. All rights reserved.
//

#import "SkinCoverTool.h"

@implementation SkinCoverTool

+ (void)hideHomeIndicator:(BOOL)autoHidden {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"UpdateHomeIndicatorNotification" object:@(autoHidden)];
}

@end
