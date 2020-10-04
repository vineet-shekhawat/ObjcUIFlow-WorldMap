//
//  ViewController.m
//  WorldClock
//
//  Created by VINEET'S on 10/2/20.
//  Copyright © 2020 VINEET'S. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    __weak IBOutlet UILabel *countryName;
    __weak IBOutlet UILabel *date;
    __weak IBOutlet UILabel *activeCases;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLocale *countryLocale = [NSLocale currentLocale];
    NSString *countryCode = [countryLocale objectForKey:NSLocaleCountryCode];
    NSString *country = [countryLocale displayNameForKey:NSLocaleCountryCode value:countryCode];
    NSLog(@"Country Code:%@ Name:%@", countryCode, country);
    countryName.text = country;

    NSDate * datee = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *localDate = [dateFormatter stringFromDate:datee];
    date.text = localDate;
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:true animated:true];
}

@end
