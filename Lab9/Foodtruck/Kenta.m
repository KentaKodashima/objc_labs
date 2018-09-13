//
//  Kenta.m
//  Foodtruck
//
//  Created by Kenta Kodashima on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Kenta.h"

@implementation Kenta

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
  if ([food isEqualToString:@"bao"]) {
    return 15.99;
  } else if ([food isEqualToString:@"shortbread"]) {
    return 29.99;
  } else {
    return 35.99;
  }
}

@end
