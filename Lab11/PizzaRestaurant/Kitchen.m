//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
  Pizza *pizza = [[Pizza alloc] initWithSize: size andToppings: toppings];
  if (_delegate != NULL) {
    if (![_delegate kitchen: self shouldMakePizzaOfSize: size andToppings: toppings]) {
      pizza = [Pizza new];
      NSLog(@"We cannot offer you a pizza...\n");
      return pizza;
    } else {
      if ([_delegate kitchenShouldUpgradeOrder: self]) {
        [pizza setSize:large];
      }
    }
    if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
      [_delegate kitchenDidMakePizza: pizza];
      NSLog(@"%@\n", pizza);
    } else {
      NSLog(@"Doesn't have the method, but we made a pizza.");
      NSLog(@"%@\n", pizza);
    }
  }
  return pizza;
}

@end
