//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Kenta Kodashima on 2018-09-14.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryDelegate.h"

@interface DeliveryCar : NSObject <DeliveryDelegate>

- (void) deliverPizza: (Pizza *) pizza;

@end
