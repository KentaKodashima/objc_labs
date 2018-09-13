//
//  main.m
//  Payments
//
//  Created by Kenta Kodashima on 2018-09-13.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int randomNum = arc4random_uniform(1000)+100;
    NSString *input = [InputHandler getUserInputWithLength:255 withPrompt: [NSString stringWithFormat: @"\nThank you for shopping at Acme.com\nYour total today is $%d\nPlease select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", randomNum]];
    int inputNum = [input intValue];
    
    PaymentGateway *paymentGateway = [PaymentGateway new];
    
    PaypalPaymentService *paypal = [PaypalPaymentService new];
    StripePaymentService *stripe = [StripePaymentService new];
    AmazonPaymentService *amazon = [AmazonPaymentService new];
    ApplePaymentService *apple = [ApplePaymentService new];
    switch (inputNum) {
      case 1:
        paymentGateway.paymentDelegate = paypal;
        [paymentGateway processPaymentAmount: randomNum];
        break;
      case 2:
        paymentGateway.paymentDelegate = stripe;
        [paymentGateway processPaymentAmount:randomNum];
        break;
      case 3:
        paymentGateway.paymentDelegate = amazon;
        [paymentGateway processPaymentAmount:randomNum];
        break;
      case 4:
        paymentGateway.paymentDelegate = apple;
        [paymentGateway processPaymentAmount:randomNum];
        break;
      default:
        break;
    }
  }
  return 0;
}
