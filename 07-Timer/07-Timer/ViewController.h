//
//  ViewController.h
//  07-Timer
//
//  Created by Matteo Stefanini on 24/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *timerLabel;

- (IBAction)toggleTimerButtonPressed:(UIButton*)sender;

@end

