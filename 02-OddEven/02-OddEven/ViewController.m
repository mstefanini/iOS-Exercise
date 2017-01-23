//
//  ViewController.m
//  02-OddEven
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

- (IBAction)numberTextFieldDidOnEndExit:(UITextField*)sender{
    NSInteger rawNumber = [sender.text integerValue];
    if (rawNumber%2 == 0){
        NSLog(@"Number %li is even!", rawNumber);
        [self.resultLabel setText: [NSString stringWithFormat:@"Number %li is even!", rawNumber]];
    }else{
        NSLog(@"Number %li is odd!", rawNumber);
        [self.resultLabel setText: [NSString stringWithFormat:@"Number %li is odd!", rawNumber]];
    }
}


@end
