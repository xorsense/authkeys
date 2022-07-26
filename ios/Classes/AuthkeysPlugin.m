#import "AuthkeysPlugin.h"
#if __has_include(<authkeys/authkeys-Swift.h>)
#import <authkeys/authkeys-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "authkeys-Swift.h"
#endif

@implementation AuthkeysPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAuthkeysPlugin registerWithRegistrar:registrar];
}
@end
