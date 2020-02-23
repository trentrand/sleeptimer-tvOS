#define kBundlePath @"/Library/TVSystemMenuModules/SleepTimer.bundle"

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <TVSystemMenuUI/TVSMButtonViewController.h>
#include "SLPSleepTimerModule.h"

@implementation SLPSleepTimerModule

+(long long)buttonStyle {
  return 2;
}

-(id)contentViewController {

  TVSMButtonViewController *buttonController = (TVSMButtonViewController*)[super contentViewController];
  [buttonController setTitleText:@"Sleep Timer"];
  [buttonController setSecondaryText:@"No sleep timer active"];
  NSString *packageFile = [[self bundle] pathForResource:@"Package" ofType:@"png"];
  // TODO: utilize something like [[UIImage imageWithContentsOfFile:packageFile] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] to properly support different images for light and dark mode
  [buttonController setImage:[UIImage imageWithContentsOfFile:packageFile]];

  return buttonController;
}


-(void)showView {
  // Create a reference to the the appropriate storyboard
  UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: [NSBundle bundleWithPath:kBundlePath]];
  UIViewController* customViewController = [storyboard instantiateViewControllerWithIdentifier:@"AlarmModalViewController"];

  NSLog(@"presenting view controller");

  UIViewController *viewController = self.contentViewController.view.window.rootViewController;
  if (viewController.presentedViewController && !viewController.presentedViewController.isBeingDismissed) {
    viewController = viewController.presentedViewController;
  }

  [viewController presentViewController: customViewController animated: YES completion:nil];
}

-(void)handleAction {
  NSLog(@"user clicked notification center button");

  // Render
  [self showView];
}

-(BOOL)dismissAfterAction {
  return FALSE;
}

@end
