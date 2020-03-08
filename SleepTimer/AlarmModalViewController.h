//
//  AlarmModalViewController.h
//
//
//  Created by Trent Rand on 2/23/20.
//

#import <UIKit/UIKit.h>

@interface AlarmModalViewController : UIViewController

@property (unsafe_unretained, nonatomic) IBOutlet UILabel *timerLabel;
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *decrementButton;

- (IBAction)handleDecrementTimer;
- (IBAction)handleIncrementTimer;
- (IBAction)handleToggleTimer;

- (void)startTimer;
- (void)cancelTimer;

- (void)setMinutesRemaining:(int)minutes;

@end
