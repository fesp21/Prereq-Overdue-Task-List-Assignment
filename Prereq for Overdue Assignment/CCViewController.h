//
//  CCViewController.h
//  Prereq for Overdue Assignment
//
//  Created by Eliot Arntz on 10/31/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)processDateButtonPressed:(UIButton *)sender;
@end
