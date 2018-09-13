//
//  PaymentGateway.h
//  Payments
//
//  Created by Kenta Kodashima on 2018-09-13.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>
  - (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void) processPaymentAmount: (NSInteger) methodNum;

@end
