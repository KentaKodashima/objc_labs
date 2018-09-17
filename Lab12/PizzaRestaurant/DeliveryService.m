//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Kenta Kodashima on 2018-09-14.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"

@interface DeliveryService ()

// define private properties
@property (nonatomic, strong) NSMutableArray *pizzaRecords;

@end

@implementation DeliveryService

- (instancetype)init
{
  self = [super init];
  if (self) {
    _pizzaDescription = [NSMutableArray new];
    _pizzaRecords = [NSMutableArray new];
  }
  return self;
}

- (void) deliverPizza: (Pizza *) pizza {
  [_pizzaRecords addObject: [self pizzaDescriptionWithPizza:pizza]];
  NSLog(@"Private pizza record count: %d", _pizzaRecords.count);
  NSLog(@"Pizza description: %@, %@, %@, %@", _pizzaDescription[0], _pizzaDescription[1], _pizzaDescription[2], _pizzaDescription[3]);
  [_delegate deliverPizza: pizza];
}

- (NSMutableArray *) pizzaDescriptionWithPizza: (Pizza *) pizza {
  NSString *pizzaSize;
  switch (pizza.size) {
    case small:
      pizzaSize = @"small";
      break;
    case medium:
      pizzaSize = @"medium";
      break;
    case large:
      pizzaSize = @"large";
      break;
    default:
      break;
  }
  [_pizzaDescription addObject: pizzaSize];
  [_pizzaDescription addObject: pizza.toppings[0]];
  [_pizzaDescription addObject: pizza.toppings[1]];
  [_pizzaDescription addObject: pizza.toppings[2]];
  
  return _pizzaDescription;
}

@end
