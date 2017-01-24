//
//  ViewController.h
//  04-OrderRandomNumbers
//
//  Created by Matteo Stefanini on 23/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *arrayUnorderedResultLabel;


- (IBAction)newRandomArrayButtonPressed:(id)sender;

@end

