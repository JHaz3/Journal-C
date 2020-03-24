//
//  HAZEntryController.h
//  Journal-C
//
//  Created by Jake Haslam on 3/23/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HAZEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface HAZEntryController : NSObject



// MARK: - Properties
// Singleton + Source of Truth
@property (nonatomic, strong) NSMutableArray *entries;

+ (HAZEntryController *) shared;

// MARK: - CRUD Functions

- (void)addEntry:(HAZEntry *) entry;

- (void)removeEntry:(HAZEntry *) entry;

-(void)updateEntry:(HAZEntry *) entry title:(NSString *) title
                                bodyText:(NSString *) bodyText;


@end

NS_ASSUME_NONNULL_END
