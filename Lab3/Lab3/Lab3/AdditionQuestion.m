//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Kenta Kodashima on 2018-09-06.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
  self = [super init];
  if (self) {
    // Generate 2 random ints
    // arc4random_uniform() is a C function, so we don't need []
    int left = arc4random_uniform(90) + 10;
    int right = arc4random_uniform(90) + 10;
    
    // maek question str
    _question = [NSString stringWithFormat: @"%d + %d = ", left, right];
    
    // get the answet and assign it to answer
    _answer = left + right;
  }
  return self;
}

@end
