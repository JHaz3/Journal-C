//
//  HAZDetailViewController.h
//  Journal-C
//
//  Created by Jake Haslam on 3/23/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HAZEntryController.h"
#import "HAZEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface HAZDetailViewController : UIViewController

@property HAZEntry *entryLandingPad;
@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextView;
- (IBAction)saveEntryButtonTapped:(id)sender;
- (IBAction)clearEntryButtonTapped:(id)sender;


@end

NS_ASSUME_NONNULL_END
