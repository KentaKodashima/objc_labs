//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "SecondManager.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
//    NSLog(@"Please pick your pizza size and toppings:");
    
    Kitchen *restaurantKitchen = [Kitchen new];
    Manager *manager = [Manager new];
    SecondManager *secondManager = [SecondManager new];
    
    while (TRUE) {
      
      NSLog(@"Please pick your pizza size and toppings:");
      NSLog(@"> ");
      char str[100];
      fgets (str, 100, stdin);
      
      NSString *inputString = [[NSString alloc] initWithUTF8String:str];
      inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
      
      NSLog(@"Input was %@", inputString);
      NSLog(@" ");
      
      // Take the first word of the command as the size, and the rest as the toppings
      NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
      
      // Define variables for size and toppings out of inputs
      PizzaSize size;
      if ([commandWords[0] isEqualToString:@"small"]) {
        size = small;
      } else if ([commandWords[0] isEqualToString:@"medium"]) {
        size = medium;
      } else if ([commandWords[0] isEqualToString:@"large"]) {
        size = large;
      }
      NSArray *toppings = @[commandWords[1], commandWords[2], commandWords[3]];
      
      NSLog(@"====== Manager ======");
      
      restaurantKitchen.delegate = manager;
      [restaurantKitchen makePizzaWithSize: size toppings: toppings];
      
      NSLog(@" ");
      
      NSLog(@"====== SecondManager ======");
      
      restaurantKitchen.delegate = secondManager;
      [restaurantKitchen makePizzaWithSize: size toppings: toppings];
      
      NSLog(@" ");
    }
    
  }
  return 0;
}
