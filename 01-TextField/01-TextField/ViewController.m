//
//  ViewController.m
//  01-TextField
//
//  Created by Matteo Stefanini on 23/01/2017.
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

- (IBAction)nameTextFieldDidEndOnExit:(UITextField *)sender {
    NSLog(@"Name log: %@", sender.text);
    [self.resultLabel setText:sender.text];
}

@end
