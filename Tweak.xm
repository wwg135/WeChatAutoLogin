@interface MultiDeviceCardLoginContentView : UIView
- (void)layoutSubviews;
- (void)onTapConfirmButton;
@end

%hook MultiDeviceCardLoginContentView
- (void)layoutSubviews {
  %orig;
  [self onTapConfirmButton];
}
%end

%ctor {
	NSLog(@"HookWechat自动登陆已注入");
}
