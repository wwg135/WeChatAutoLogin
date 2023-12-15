#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook MultiDeviceCardLoginContentView
- (void)layoutSubviews {
    %orig;
    [self onTapConfirmButton];
}
%end

%ctor {
    NSLog(@"HookWechat自动登陆已注入");
}
