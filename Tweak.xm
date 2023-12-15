#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MultiDeviceCardLoginContentView.h"

%hook MultiDeviceCardLoginContentView

- (void)layoutSubviews {
    %orig;
    [self onTapConfirmButton];
}

%end

%ctor {
    NSLog(@"HookWechat自动登陆已注入");
}
