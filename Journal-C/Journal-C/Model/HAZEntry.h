//
//  HAZEntry.h
//  Journal-C
//
//  Created by Jake Haslam on 3/23/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HAZEntry : NSObject

@property (nonatomic, copy) NSString *bodyText;
@property (nonatomic, copy) NSString *title;
@property (nonatomic) NSDate *timeStamp;

-(instancetype) initWithTitle:(NSString *)title
                bodyText:(NSString *)bodyText
                timeStamp:(NSDate *)timeStamp;

@end

NS_ASSUME_NONNULL_END
