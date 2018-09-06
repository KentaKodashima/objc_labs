//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Kenta Kodashima on 2018-09-06.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

// Method to print NSLog
+ (void) logScoreWithRight: (int) right withWrong: (int) wrong {
  
  float ratio = (right / ((float)right + (float)wrong)) * 100;
  
  NSLog(@"score: %d right, %d wrong ---- %.0f%%", right, wrong, ratio);
}

// Initializer to initialize 'rightCount' and 'wrongCount'
- (instancetype)init
{
  self = [super init];
  if (self) {
    _rightCount = 0;
    _wrongCount = 0;
  }
  return self;
}

@end
