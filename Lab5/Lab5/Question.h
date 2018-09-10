//
//  AdditionQuestion.h
//  Lab5
//
//  Created by Kenta Kodashima on 2018-09-06.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;

- (NSTimeInterval) answerTime;

- (void) generateQuestion;

@end
