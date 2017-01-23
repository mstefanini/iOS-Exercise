//
//  ViewController.h
//  03-RandomOddEven
//
//  Created by Matteo Stefanini on 23/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *resultLabel;
@property (nonatomic, weak) IBOutlet UIButton *evenButton;
@property (nonatomic, weak) IBOutlet UIButton *oddButton;

- (IBAction)newRandomButtonPressed:(id)sender;
- (IBAction)evaluateButtonsPressed:(id)sender;



@end

