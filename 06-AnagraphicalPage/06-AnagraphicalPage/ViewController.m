//
//  ViewController.m
//  06-AnagraphicalPage
//
//  Created by Matteo Stefanini on 24/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)saveButtonPressed:(UIButton *)sender {
    NSLog(@"\nData: {\n\tname: %@,\n\tsurname: %@,\n\tage: %@\n}", self.nameTextField.text, self.surnameTextField.text, self.ageTextField.text);
}

@end
