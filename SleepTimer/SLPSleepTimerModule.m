#define kBundlePath @"/Library/TVSystemMenuModules/SleepTimer.bundle"

#import <UIKit/UIKit.h>
#import <TVSystemMenuUI/TVSMButtonViewController.h>
#include "SLPSleepTimerModule.h"

@implementation SLPSleepTimerModule : TVSMActionModule

-(id)contentViewController {
  TVSMButtonViewController *buttonController = (TVSMButtonViewController*)[super contentViewController];
  [buttonController setTitleText:@"Sleep Timer"];
  [buttonController setSecondaryText:@"No sleep timer active"];
  NSString *packageFile = [[self bundle] pathForResource:@"Package" ofType:@"png"];
  // TODO: utilize something like [[UIImage imageWithContentsOfFile:packageFile] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] to properly support different images for light and dark mode
  [buttonController setImage:[UIImage imageWithContentsOfFile:packageFile]];

  return buttonController;
}

-(void)showModal {
  UIViewController *rootViewController = self.contentViewController.view.window.rootViewController;
  if (rootViewController.presentedViewController && !rootViewController.presentedViewController.isBeingDismissed) {
    rootViewController = rootViewController.presentedViewController;
  }

  UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: [NSBundle bundleWithPath:kBundlePath]];

  UIViewController* alarmModalViewController = [storyboard instantiateViewControllerWithIdentifier:@"AlarmModalViewController"];

  if (UIAccessibilityIsReduceTransparencyEnabled()) {
    alarmModalViewController.view.backgroundColor = [UIColor blackColor];
  } else {
    // Add vibrancy effect to AlarmModalView
    alarmModalViewController.view.backgroundColor = [UIColor clearColor];

    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurEffectView.frame = alarmModalViewController.view.bounds;
    blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    [alarmModalViewController.view insertSubview:blurEffectView atIndex: 0];

    // Add vibrancy effect to AlarmModalView
    UIVibrancyEffect *vibrancyEffect = [UIVibrancyEffect effectForBlurEffect: blurEffect];
    UIVisualEffectView *vibrancyEffectView = [[UIVisualEffectView alloc] initWithEffect: vibrancyEffect];
    vibrancyEffectView.frame = alarmModalViewController.view.bounds;
    vibrancyEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    [alarmModalViewController.view insertSubview:vibrancyEffectView atIndex: 0];
  }

  [rootViewController presentViewController: alarmModalViewController animated: YES completion:nil];
}

-(void)handleAction {
  [self showModal];
}

-(BOOL)dismissAfterAction {
  return FALSE;
}

+(long long)buttonStyle {
  return 2; // full-width
}

@end
