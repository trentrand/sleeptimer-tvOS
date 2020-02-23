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

-(void)showAlert {
  UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"Set a sleep timer"
    message:@""
    preferredStyle:UIAlertControllerStyleAlert];

  UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Confirm"
    style:UIAlertActionStyleDefault
    handler:^(UIAlertAction * action) {}];

  [alertController addAction:defaultAction];

  CGFloat margin = 0.0F;
  CGFloat width = alertController.view.bounds.size.width;
  CGFloat height = alertController.view.bounds.size.height;
  UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(-1 * width / 2, -1 * height / 2, width / 2, height / 2)];
  customView.backgroundColor = [UIColor greenColor];
  [alertController.view addSubview:customView];

  UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
  [button setTitle:@"Show View" forState:UIControlStateNormal];
  [button setTitleColor:[UIColor blackColor] forState: UIControlStateNormal];
  button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
  button.frame = CGRectMake(margin, margin, 400.0F, 100.0F);
  // button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
  [customView addSubview:button];
}


-(void)handleAction {
  NSLog(@"user clicked notification center button");

  // (Experimental: show a alert with custom view, a potential route for displaying ui)
  [self showAlert];


}

-(BOOL)dismissAfterAction {
  return FALSE;
}

@end
