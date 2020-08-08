# WindowsHideHomeIndicator

Demo for [SO Question 58913572](https://stackoverflow.com/questions/58913572/)

After add a SkinCoverWindow, code `- (BOOL)prefersHomeIndicatorAutoHidden { return YES; }` in view controller don't auto hide home indicator.

I solved this by nofity SkinCoverRootViewController to update.<br>

**Is there a solution that can automatically work**?

```Objc
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
```