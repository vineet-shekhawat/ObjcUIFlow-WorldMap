//
//  CountryViewController.m
//  WorldClock
//
//  Created by VINEET'S on 03/10/20.
//  Copyright © 2020 VINEET'S. All rights reserved.
//

#import "CountryViewController.h"

@interface CountryViewController (){
    
    __weak IBOutlet UIImageView *countryMap;
    
}

@end

@implementation CountryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    countryMap.image = [UIImage imageNamed:_countryName];
    }

@end
