//
//  ContinentTableViewCell.m
//  WorldClock
//
//  Created by VINEET'S on 02/10/20.
//  Copyright © 2020 VINEET'S. All rights reserved.
//

#import "ContinentTableViewCell.h"

@implementation ContinentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _continentName.text = @"Continent";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
