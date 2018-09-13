//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kenta Kodashima on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

// Make a type with options
// C way
typedef enum {
  small,
  medium,
  large
} PizzaSize;
//enum PizzaSize {
//  small,
//  medium,
//  large
//};

@interface Pizza : NSObject

// enum PizzaSize is now a type
@property (nonatomic, assign) PizzaSize size;
//@property (nonatomic, assign) enum PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;

// Convenience inits
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize: (PizzaSize) size;

@end
