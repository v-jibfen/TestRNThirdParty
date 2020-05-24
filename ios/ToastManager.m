#import "ToastManager.h"
#import <UIKit/UIKit.h>
#import "UIView+Toast.h"

@implementation ToastManager

RCT_EXPORT_MODULE();
- (NSDictionary *)constantsToExport
{
  return @{
      @"SHORT": @(2500),
      @"LONG": @(3500),
      @"TOP": @(48),
      @"CENTER": @(17),
      @"BOTTOM": @(80)
  };
}

RCT_EXPORT_METHOD(showWithGravity:(NSString *)message duration:(int)duration position:(int)positionValue)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    NSString* position;
    switch (positionValue) {
      case 48:
        position = (NSString *)CSToastPositionTop;
        break;
      case 17:
        position = (NSString *)CSToastPositionCenter;
        break;
      default:
        position = (NSString *)CSToastPositionBottom;
        break;
    }
      [[UIApplication sharedApplication].keyWindow.rootViewController.view makeToast: message duration: duration / 1000.0f position: position];
  });
}

RCT_EXPORT_METHOD(show:(NSString *)message duration:(int)duration)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view makeToast: message duration: duration / 1000.0f position: (NSString *)CSToastPositionCenter];
  });
}


@end

