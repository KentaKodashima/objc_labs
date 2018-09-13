//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Kenta Kodashima on 2018-09-13.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
  NSLog(@"Amazon processed amount $%ld", (long)amount);
}

- (BOOL)canProcessPayment {
  int randomBoolNum = arc4random_uniform(2);
  if (randomBoolNum == 0) {
    return NO;
  } else {
    return YES;
  }
}

@end
