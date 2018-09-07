//
//  Contact.m
//  Lab4
//
//  Created by Kenta Kodashima on 2018-09-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email
{
  self = [super init];
  if (self) {
    _name = name;
    _email = email;
  }
  return self;
}

// There's no Override keyword
// It just automatically overrides
// Override to NSLog() actual contents, otherwise it's gonna print out the memory address
- (NSString *)description
{
  return [NSString stringWithFormat:@"\n<%@> (%@)", self.name, self.email];
}

- (NSString *) contactDetail {
  return @"";
}

@end
