//
//  AdditionQuestion.m
//  Lab5
//
//  Created by Kenta Kodashima on 2018-09-06.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
  self = [super init];
  if (self) {
    // Generate 2 random ints
    // arc4random_uniform() is a C function, so we don't need []
    _leftValue = arc4random_uniform(90) + 10;
    _rightValue = arc4random_uniform(90) + 10;
    
    _startTime = [NSDate date];
  }
  return self;
}

// Overriding the getter
- (NSInteger)answer {
  _endTime = [NSDate date];
  return _answer;
}

- (NSTimeInterval) answerTime {
  
  return [_endTime timeIntervalSinceDate: _startTime];
}

- (void) generateQuestion {
  
}

@end
