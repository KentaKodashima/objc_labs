//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Kenta Kodashima on 2018-09-14.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryDelegate.h"

@interface DeliveryService : NSObject <DeliveryDelegate>

@property (nonatomic, weak) id<DeliveryDelegate> delegate;
@property (nonatomic, strong) NSMutableArray *pizzaDescription;

- (void) deliverPizza: (Pizza *) pizza;

@end
