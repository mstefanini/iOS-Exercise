//
//  ViewController.h
//  02-OddEven
//
//  Created by Matteo Stefanini on 23/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *resultLabel;

- (IBAction)numberTextFieldDidOnEndExit:(id)sender;

@end

