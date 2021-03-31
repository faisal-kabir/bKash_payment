#import "BkashPaymentPlugin.h"
#if __has_include(<bkash_payment/bkash_payment-Swift.h>)
#import <bkash_payment/bkash_payment-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bkash_payment-Swift.h"
#endif

@implementation BkashPaymentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBkashPaymentPlugin registerWithRegistrar:registrar];
}
@end
