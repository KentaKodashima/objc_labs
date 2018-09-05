//
//  Student.m
//  lab2
//
//  Created by Kenta Kodashima on 2018-09-05.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Student.h"

// Declare @interface in .m file
@interface Student () {
  // define private properties
  // define private methods
}
@end

@implementation Student {
  // define private instance variables
  // _ is a convenvtion for private instance variables in objc
}

// implement methods

// - stands for instance method
// WithId, andName, andCountry are just one of the objc conventions
// use identification as a name because id is a objc keyword
- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country
{
  self = [super init];
  if (self) {
//    Calling the getter and set
//    self.identification = identification;
    // Directly accessing the property
    _identification = identification; // Accessing the @property in .h
    _name = name;
    _country = country;
  }
  return self;
}

@end
