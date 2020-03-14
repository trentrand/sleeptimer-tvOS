#import "AlarmModalViewController.h"

@implementation AlarmModalViewController {
  dispatch_source_t _timer;
}

UILabel *timerLabel;
UIButton *decrementButton;

const int startingTimerSpan = 15;
int minutesRemaining;
int step = 15;

- (void)viewDidLoad {
  [self setMinutesRemaining: startingTimerSpan];
}

- (IBAction)handleDecrementTimer {
  [self setMinutesRemaining: minutesRemaining - step];
}

- (IBAction)handleIncrementTimer {
  [self setMinutesRemaining: minutesRemaining + step];
}

- (IBAction)handleToggleTimer {
  [self startTimer];
}

- (void)setMinutesRemaining:(int)minutes {
  minutesRemaining = minutes;

  self.timerLabel.text = [NSString stringWithFormat: @"%d", minutesRemaining];

  BOOL isNextDecrementValid = (minutes - step) >= 0;
  [decrementButton setEnabled:isNextDecrementValid];
}

dispatch_source_t CreateDispatchTimer(double interval, dispatch_queue_t queue, dispatch_block_t callback) {
  dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
  if (timer)
    {
    dispatch_source_set_timer(timer, dispatch_time(DISPATCH_TIME_NOW, interval * NSEC_PER_SEC), interval * NSEC_PER_SEC, (1ull * NSEC_PER_SEC) / 10);
    dispatch_source_set_event_handler(timer, callback);
    dispatch_resume(timer);
    }
  return timer;
}

- (void)startTimer {
  dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
  double secondsToFire = minutesRemaining; // switch "seconds" to minutes after debugging

  _timer = CreateDispatchTimer(secondsToFire, queue, ^{
    NSLog(@"TIMER FIRED!");
    self.timerLabel.text = [NSString stringWithFormat: @"PING"];
    [NSThread sleepForTimeInterval:3.0f];
    [self setMinutesRemaining: startingTimerSpan];
  });
}

- (void)cancelTimer {
  if (_timer) {
    dispatch_source_cancel(_timer);
    _timer = nil;
  }
}

@end
