//
//  ViewController.m
//  05-OrderName
//
//  Created by Matteo Stefanini on 24/01/2017.
//  Copyright © 2017 Matteo Stefanini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *_array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _array = @[
            @"Freddie Campbell",
            @"Krista Kim",
            @"Merle Hubbard",
            @"Lorraine Weber",
            @"Lorenzo Greene",
            @"Sandra Brock",
            @"Nichole Hines",
            @"Floyd Clarke",
            @"Andrea Ramsey",
            @"Marcus Reid",
            @"Jacob Garza",
            @"Peter Herrera",
            @"Glenn Horton",
            @"Francis Mack",
            @"Yvette Farmer",
            @"Evan Hughes",
            @"Shelley Lane",
            @"Gladys Carroll",
            @"Stella Thornton",
            @"Mindy Wilkerson",
            @"Beth Diaz",
            @"Everett Mckinney",
            @"Audrey Cooper",
            @"Christie Sutton",
            @"Timothy Walters"
            ];
    [self orderAnagraphicalArray];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)orderAnagraphicalArray {
    _array = [_array sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
        return [obj1 compare:obj2];
    }];
    NSLog(@"%@", _array);
}


@end
