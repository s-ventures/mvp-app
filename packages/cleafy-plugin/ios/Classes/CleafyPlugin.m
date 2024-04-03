#import "CleafyPlugin.h"
#if __has_include(<CleafyPlugin/CleafyPlugin-Swift.h>)
#import <CleafyPlugin/CleafyPlugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "CleafyPlugin-Swift.h"
#endif

@implementation CleafyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [CleafyFlutterPlugin registerWithRegistrar:registrar];
}
@end
