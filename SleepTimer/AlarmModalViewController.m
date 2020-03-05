#import "AlarmModalViewController.h"

@implementation AlarmModalViewController

UILabel *timerLabel;
int minutesRemaining;
int step = 15;

- (id)init {
    if (self = [super init]) {
      [self setMinutesRemaining: 30];
    }
    return self;
}

- (IBAction)handleDecrementTimer {
  [self setMinutesRemaining: minutesRemaining - step];
}

- (IBAction)handleIncrementTimer {
  [self setMinutesRemaining: minutesRemaining + step];
}

- (void)setMinutesRemaining:(int)minutes {
  minutesRemaining = minutes;
  self.timerLabel.text = [NSString stringWithFormat: @"%d", minutesRemaining];

  if (minutes - step <= 0) {
    // TODO: disable the decrement button, next step is negative
  }
}

@end
