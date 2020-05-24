#import "ToastManager.h"
#import "UIView+Toast.h"

typedef NS_ENUM(NSUInteger, ToastPosition) {
  top = 0,
  center,
  bottom,
};

@implementation ToastManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showMessage:(NSString *)message duration:(float)duration position:(int)positionValue)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    NSString* position;
    switch (positionValue) {
      case 0:
        position = (NSString *)CSToastPositionTop;
        break;
      case 1:
        position = (NSString *)CSToastPositionCenter;
        break;
      default:
        position = (NSString *)CSToastPositionBottom;
        break;
    }
    [[UIApplication sharedApplication].keyWindow.rootViewController.view makeToast: message duration: duration position: position];
  });
}


@end

