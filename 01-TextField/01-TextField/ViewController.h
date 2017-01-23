//
//  ViewController.h
//  01-TextField
//
//  Created by Matteo Stefanini on 23/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UILabel *resultLabel;

- (IBAction)nameTextFieldDidEndOnExit:(id)sender;

@end

