//
//  StripePaymentService.h
//  Payments
//
//  Created by Kenta Kodashima on 2018-09-13.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>

- (void)processPaymentAmount:(NSInteger)amount;
- (BOOL)canProcessPayment;

@end
