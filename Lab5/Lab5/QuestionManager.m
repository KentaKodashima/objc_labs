//
//  QuestionManager.m
//  Lab5
//
//  Created by Kenta Kodashima on 2018-09-10.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
  self = [super init];
  if (self) {
    
    // Initialize by creating a new array
    _questions = [NSMutableArray array];
  }
  return self;
}

- (NSString *) timeOutput {
  Question *firstQuestion = [_questions objectAtIndex: 0];
  Question *lastQuestion = [_questions objectAtIndex: [_questions count] - 1];
  
  NSTimeInterval timeInterval = [[lastQuestion endTime] timeIntervalSinceDate: [firstQuestion startTime]];
  long second = lroundf(timeInterval);
  
  return [NSString stringWithFormat:@"total time: %lus average time: %lus", second, second / [_questions count]];
}

@end
