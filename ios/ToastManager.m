#import "ToastManager.h"
#import "UIView+Toast.h"

typedef NS_ENUM(NSUInteger, ToastPosition) {
  top = 0,
  center,
  bottom,
};

@implementation ToastManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showWithGravity:(NSString *)message duration:(float)duration gravity:(int)gravity)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    NSString* position;
    switch (gravity) {
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

RCT_EXPORT_METHOD(show:(NSString *)message duration:(float)duration)
{
  dispatch_async(dispatch_get_main_queue(), ^{
      [[UIApplication sharedApplication].keyWindow.rootViewController.view makeToast: message duration: duration position: 3.5f];
  });
}


@end

