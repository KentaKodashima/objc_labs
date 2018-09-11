//
//  Dice.m
//  Lab6
//
//  Created by Kenta Kodashima on 2018-09-11.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
  self = [super init];
  if (self) {
    _faceValue = arc4random_uniform(6) + 1;
    _isHeld = false;
  }
  return self;
}

// convenience initializer
+ (instancetype) dice {
  return [[self alloc] init];
}

- (void) roll {
  // Re-assign a new number
  _faceValue = arc4random_uniform(6) + 1;
}

- (NSString *)description
{
  switch (_faceValue) {
    case 1:
      if (_isHeld) {
        return @"[⚀]";
      }
      return @"⚀";
      break;
    case 2:
      if (_isHeld) {
        return @"[⚁]";
      }
      return @"⚁";
    case 3:
      if (_isHeld) {
        return @"[⚂]";
      }
      return @"⚂";
    case 4:
      if (_isHeld) {
        return @"[⚃]";
      }
      return @"⚃";
    case 5:
      if (_isHeld) {
        return @"[⚄]";
      }
      return @"⚄";
    case 6:
      if (_isHeld) {
        return @"[⚅]";
      }
      return @"⚅";
    default:
      return @"Invalid die";
  }
}

@end
