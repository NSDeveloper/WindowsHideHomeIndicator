//
//  SkinCoverWindow.m
//

#import "SkinCoverWindow.h"
#import "SkinCoverRootViewController.h"

@implementation SkinCoverLayer
@end


@implementation SkinCoverWindow

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self.layer.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];
        
        self.rootViewController = [[SkinCoverRootViewController alloc] init];
        self.windowLevel = 0.5;
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(windowDidBecomeVisible:) name:UIWindowDidBecomeVisibleNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(windowDidBecomeHidden:) name:UIWindowDidBecomeHiddenNotification object:nil];
    }
    return self;
}

- (void)dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (BOOL)canBecomeFirstResponder {
    
    return YES;
}

- (void)becomeKeyWindow {
    
    self.hidden = YES;
    self.hidden = NO;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    return nil;
}

- (void)windowDidBecomeVisible:(NSNotification *)notif {
    
    UIWindow *window = [notif object];
    if ([NSStringFromClass([window class]) hasPrefix:@"_UIAlertController"]) {
        self.windowLevel = 2099;
    }
}

- (void)windowDidBecomeHidden:(NSNotification *)notif {
    
    UIWindow *window = [notif object];
    if ([NSStringFromClass([window class]) hasPrefix:@"_UIAlertController"]) {
        self.windowLevel = 0.5;
    }
}

@end
