//
//  ViewController.m
//  03-RandomOddEven
//
//  Created by Matteo Stefanini on 23/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import "ViewController.h"

#define ResultTitle @"Result"
#define QuestionMessage @"Is it even or odd?"
#define ResultError @"Wrong!"
#define ResultRight @"Right!"


@interface ViewController () {
    NSInteger _randomNumber;
}

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

- (IBAction)newRandomButtonPressed:(id)sender {
    _randomNumber = [self getRandomNumberBetween:0 to:100];
    [self.resultLabel setText:[NSString stringWithFormat:@"%li", _randomNumber]];
}

- (IBAction)evaluateButtonsPressed:(UIButton*)sender {
    UIAlertController *alertController = nil;
    if ([[sender currentTitle] isEqualToString:@"Even"] && _randomNumber%2 == 0) {
        alertController = [UIAlertController alertControllerWithTitle:ResultTitle message:ResultRight preferredStyle:UIAlertControllerStyleAlert];
    } else if ([[sender currentTitle] isEqualToString:@"Odd"] && _randomNumber%2 != 0) {
        alertController = [UIAlertController alertControllerWithTitle:ResultTitle message:ResultRight preferredStyle:UIAlertControllerStyleAlert];
    } else {
        alertController = [UIAlertController alertControllerWithTitle:ResultTitle message:ResultError preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:true completion:nil];
}


#pragma mark - Random Creation

- (int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}


@end
