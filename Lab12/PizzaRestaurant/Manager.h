//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Kenta Kodashima on 2018-09-14.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "DeliveryDelegate.h"

@interface Manager : NSObject <KitchenDelegate>

@property (nonatomic, weak) id<DeliveryDelegate> delegate;

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void) kitchenDidMakePizza:(Pizza *)pizza;

@end
