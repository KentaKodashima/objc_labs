//
//  ContactList.m
//  Lab4
//
//  Created by Kenta Kodashima on 2018-09-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
  self = [super init];
  if (self) {
    _contactList = [NSMutableArray new];
    //    _contactList = [[NSMutableArray alloc] init];
  }
  return self;
}

- (void) addContact: (Contact *) newContact {
  // ToDo: Bonus 3: Check duplicates
  
  [_contactList addObject: newContact];
}

- (NSString *)description
{
  NSMutableString *result = [NSMutableString new];
  int count = 0;
  for (Contact *contact in _contactList) {
    NSString *contactString = [NSString stringWithFormat:@"%d: %@\n", count, contact];
    count++;
    [result appendString:contactString];
  }
  
  return result;
}

@end
