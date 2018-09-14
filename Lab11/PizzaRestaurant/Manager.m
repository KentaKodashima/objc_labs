//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Kenta Kodashima on 2018-09-14.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
  if ([toppings containsObject:@"anchovies"]) {
    return NO;
  } else {
    return YES;
  }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return NO;
}

@end
