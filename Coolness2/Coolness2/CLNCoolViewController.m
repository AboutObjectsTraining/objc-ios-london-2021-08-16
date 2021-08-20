// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@end

@implementation CLNCoolViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)addCell {
    NSLog(@"In %s\n", __func__);
    CLNCoolViewCell *newCell = [[CLNCoolViewCell alloc] init];
    newCell.text = self.textField.text;
    newCell.backgroundColor = UIColor.blueColor;
    [self.contentView addSubview:newCell];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"In %s", __func__);
    [super touchesBegan:touches withEvent:event];
}

//- (void)viewDidLoad {
//    [super viewDidLoad];
//
//    CLNCoolViewCell *cell1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 240, 40)];
//    CLNCoolViewCell *cell2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(50, 120, 240, 40)];
//
//    [self.contentView addSubview:cell1];
//    [self.contentView addSubview:cell2];
//
//    cell1.text = @"Hello World! 🌎🌍🌏";
//    cell2.text = @"Cool View Cells Rock! 🍾🥂";
//
//    cell1.backgroundColor = UIColor.purpleColor;
//    cell2.backgroundColor = UIColor.orangeColor;
//}

// MARK: - loadView experiments

- (void)loadView1 {
    [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:self options:nil];
}

- (void)loadView2 {
    NSArray *topLevelObjs = [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:nil options:nil];
    self.view = topLevelObjs.firstObject;
}

@end
