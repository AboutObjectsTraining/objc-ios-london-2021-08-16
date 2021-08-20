// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "RELReadingListController.h"

@interface RELReadingListController ()

@end

@implementation RELReadingListController

- (IBAction)done:(UIStoryboardSegue *)unwindSegue {
    // TODO: Update UI and save
}

- (IBAction)cancel:(UIStoryboardSegue *)unwindSegue {
    // Do nothing.
}


// MARK: UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100; // FIXME: Calculate this value!
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Book Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Book Cell"];
        cell.textLabel.text = [NSString stringWithFormat:@"Row %@", @(indexPath.row + 1)];
    }
    
//    cell.textLabel.text = [NSString stringWithFormat:@"Row %@", @(indexPath.row + 1)];
    
    return cell;
}

@end
