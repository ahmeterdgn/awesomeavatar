#import "AwesomeavatarPlugin.h"
#if __has_include(<awesomeavatar/awesomeavatar-Swift.h>)
#import <awesomeavatar/awesomeavatar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "awesomeavatar-Swift.h"
#endif

@implementation AwesomeavatarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAwesomeavatarPlugin registerWithRegistrar:registrar];
}
@end
