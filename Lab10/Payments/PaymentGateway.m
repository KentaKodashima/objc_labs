//
//  PaymentGateway.m
//  Payments
//
//  Created by Kenta Kodashima on 2018-09-13.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) amount {
  if ([self.paymentDelegate canProcessPayment]) {
    [self.paymentDelegate processPaymentAmount: amount];
  } else {
    NSLog(@"\nSorry, we cannot process your order.");
  }
}

@end
