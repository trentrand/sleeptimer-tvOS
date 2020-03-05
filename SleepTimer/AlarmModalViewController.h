//
//  AlarmModalViewController.h
//
//
//  Created by Trent Rand on 2/23/20.
//

#import <UIKit/UIKit.h>

@interface AlarmModalViewController : UIViewController

@property (unsafe_unretained, nonatomic) IBOutlet UILabel *timerLabel;

- (IBAction)handleDecrementTimer;
- (IBAction)handleIncrementTimer;

- (void)setMinutesRemaining:(int)minutes;

@end
