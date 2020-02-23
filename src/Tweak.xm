#import <UIKit/UIKit.h>

%hook TVSMActionModule
- (NSBundle *)bundle { %log; NSBundle *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)displayName { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (UIImage *)icon { %log; UIImage *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)iconSymbolName { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long)hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class)superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)debugDescription { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (UIViewController*)contentViewController { %log; UIViewController*  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (UIViewController*)expandedContentViewController { %log; UIViewController*  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSArray *)childModules { %log; NSArray *  r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (long long)buttonStyle { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (long long)type { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (id)delegate { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setDelegate:(id)arg1  { %log; %orig; }
- (void)handleAction { %log; %orig; }
- (BOOL)dismissAfterAction { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)contentModuleViewControllerDidTriggerAction:(id)arg1  { %log; %orig; }
%end

%hook TVSMExpandingModule
-(void)contentModuleViewControllerDidTriggerAction:(id)arg1  { %log; HBLogDebug(@"TEST"); %orig; }
%end
