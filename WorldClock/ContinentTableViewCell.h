//
//  ContinentTableViewCell.h
//  WorldClock
//
//  Created by VINEET'S on 02/10/20.
//  Copyright © 2020 VINEET'S. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContinentTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *countryList;
@property (weak, nonatomic) IBOutlet UILabel *continentName;

@end

NS_ASSUME_NONNULL_END
