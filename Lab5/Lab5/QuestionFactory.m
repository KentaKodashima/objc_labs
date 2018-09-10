//
//  QuestionFactory.m
//  Lab5
//
//  Created by Kenta Kodashima on 2018-09-10.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
  self = [super init];
  if (self) {
    _questionTypes = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion",];
  }
  return self;
}

- (Question *) generateRandomQuestion {
  // return instance of +, -, *, / Question objs.
  NSString *type = [_questionTypes objectAtIndex: arc4random_uniform(4)];
  
  // AdditionQuestion, SubtractionQuestion, MultiplicationQuestion, DivisionQuestion
  
  return [[NSClassFromString(type) alloc] init];
}

@end
