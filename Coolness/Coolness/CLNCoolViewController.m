// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@implementation CLNCoolViewController

- (void)loadView {
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = UIColor.brownColor;
    
    CLNCoolViewCell *cell1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 240, 40)];
    CLNCoolViewCell *cell2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(50, 120, 240, 40)];
    
    [self.view addSubview:cell1];
    [self.view addSubview:cell2];
    
    cell1.text = @"Hello World! 🌎🌍🌏";
    cell2.text = @"Cool View Cells Rock! 🍾🥂";
    
    cell1.backgroundColor = UIColor.purpleColor;
    cell2.backgroundColor = UIColor.orangeColor;
}

@end
