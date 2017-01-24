//
//  ViewController.h
//  06-AnagraphicalPage
//
//  Created by Matteo Stefanini on 24/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UITextField *surnameTextField;
@property (nonatomic, weak) IBOutlet UITextField *ageTextField;


- (IBAction)saveButtonPressed:(UIButton*)sender;


@end

