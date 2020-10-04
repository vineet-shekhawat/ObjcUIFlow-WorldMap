//
//  ContinentViewController.m
//  WorldClock
//
//  Created by VINEET'S on 02/10/20.
//  Copyright © 2020 VINEET'S. All rights reserved.
//

#import "ContinentViewController.h"
#import "ContinentTableViewCell.h"
#import "CountryViewController.h"

@interface ContinentViewController ()

@end

@implementation ContinentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    continentName = [ [NSMutableArray alloc]initWithObjects:
                     @"Asia", @"Africa", @"North America", @"South America", @"Antarctica", @"Europe", @"Australia", nil];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:false animated:true];
}
//UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return continentName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    ContinentTableViewCell *cell = (ContinentTableViewCell *)[tableView dequeueReusableCellWithIdentifier: CellIdentifier];
     if (cell == nil) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
       }

    cell.continentName.text = [continentName objectAtIndex:indexPath.row];
    return cell;
}

//UItableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    CountryViewController * vc = (CountryViewController *)[storyboard instantiateViewControllerWithIdentifier:@"countryList"];
    
    NSString *newTitle = [continentName objectAtIndex:indexPath.row];
    [[vc navigationItem] setTitle:newTitle];
    vc.countryName = newTitle;
    [self.navigationController pushViewController:vc animated:YES];
}

@end

