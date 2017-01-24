//
//  ViewController.m
//  07-Timer
//
//  Created by Matteo Stefanini on 24/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSTimer *_timer;
    NSInteger _timerCount;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _timerCount = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)toggleTimerButtonPressed:(UIButton *)sender {
    if (_timer == nil){
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTick) userInfo:nil repeats:YES];
    } else {
        [_timer invalidate];
        _timer = nil;
    }
}
                  
#pragma mark - Timer
- (void)timerTick {
    _timerCount++;
    NSInteger hour = _timerCount/3600;
    NSInteger minute = _timerCount/60%60;
    NSInteger second = _timerCount%60;
    [self.timerLabel setText:[NSString stringWithFormat:@"%li:%li:%li", hour, minute, second]];
}

@end
