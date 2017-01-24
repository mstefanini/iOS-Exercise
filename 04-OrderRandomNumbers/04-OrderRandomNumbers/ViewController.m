//
//  ViewController.m
//  04-OrderRandomNumbers
//
//  Created by Matteo Stefanini on 23/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import "ViewController.h"
@interface ViewController () {
    NSMutableArray *_array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _array = @[].mutableCopy;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (void)newRandomArrayButtonPressed:(id)sender {
    for (int i = 0; i < 100; i++) {
        [_array addObject:[NSNumber numberWithInt: arc4random()]];
    }
    NSLog(@"%@", _array);
    [self arraySummarize ];
    [self arrayOrderingAscending];
    [self arrayOrderingDescending];
}

#pragma mark - Core

- (void)arrayOrderingAscending {
    NSLog(@"%@",[_array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        }
        
        if (value1 < value2) {
            return NSOrderedDescending;
        }
        
        return NSOrderedAscending;
    }]);
}

- (void)arrayOrderingDescending {
    NSLog(@"%@",[_array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        }
        
        if (value1 > value2) {
            return NSOrderedDescending;
        }
        
        return NSOrderedAscending;
    }]);
}

- (void)arraySummarize {
    NSInteger result = 0;
    for (int i = 0; i < _array.count; i++) {
        result += [_array[i] integerValue];
    }
    [self.arrayUnorderedResultLabel setText: [NSString stringWithFormat:@"%li", result]];
}

@end
