//
//  AlarmModalViewController.h
//
//
//  Created by Trent Rand on 2/23/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <PineBoardServices/PBSSystemService.h>
#import <PineBoardServices/PBSSystemServiceConnection.h>

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
