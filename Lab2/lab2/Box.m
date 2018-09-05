//
//  Box.m
//  lab2
//
//  Created by Kenta Kodashima on 2018-09-05.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length
{
  self = [super init];
  if (self) {
    _width = width;
    _height = height;
    _length = length;
  }
  return self;
}

- (float) volume {
  // Accessing properties
  return _width * _height * _length;
}

- (float) ratio: (Box*) box {
  if ([self volume] > [box volume]) {
    return [self volume] / [box volume];
  } else {
    return [box volume] / [self volume];
  }
}

@end
