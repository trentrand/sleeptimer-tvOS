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

-(void)handleAction {
  NSLog(@"user clicked notification center button");

  UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"My Alert"
    message:@"This is an alert."
    preferredStyle:UIAlertControllerStyleAlert];

  UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK"
    style:UIAlertActionStyleDefault
    handler:^(UIAlertAction * action) {}];

  [alertController addAction:defaultAction];

  UIViewController *viewController = self.contentViewController.view.window.rootViewController;
  if (viewController.presentedViewController && !viewController.presentedViewController.isBeingDismissed ) {
    viewController = viewController.presentedViewController;
  }

  [viewController presentViewController: alertController animated: YES completion:nil];
}

-(BOOL)dismissAfterAction {
  return FALSE;
}

@end
