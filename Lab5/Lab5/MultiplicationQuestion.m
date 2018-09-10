//
//  MultiplicationQuestion.m
//  Lab5
//
//  Created by Kenta Kodashima on 2018-09-10.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
  self = [super init];
  if (self) {
    [self generateQuestion];
  }
  return self;
}

- (void) generateQuestion {
  // maek question str
  super.question = [NSString stringWithFormat: @"%ld * %ld = ", (long)super.leftValue, (long)super.rightValue];
  
  // get the answet and assign it to answer
  super.answer = super.leftValue * super.rightValue;
}

@end
