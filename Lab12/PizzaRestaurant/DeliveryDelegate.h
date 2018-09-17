//
//  DeliveryDelegate.h
//  PizzaRestaurant
//
//  Created by Kenta Kodashima on 2018-09-17.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DeliveryDelegate <NSObject>

- (void) deliverPizza: (Pizza *) pizza;

@end
