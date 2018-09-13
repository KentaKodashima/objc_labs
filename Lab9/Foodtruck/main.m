//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Kenta.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
    
    FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
    
    // create instances of your delegate class
    Cook *kenta = [Cook new];
    Kenta *kodashima = [Kenta new];
    
    // set truckA and truckB's delegate to your new instance.
    truckA.delegate = kenta;
    truckB.delegate = kodashima;
    
    [truckA serve:10];
    [truckB serve:5];
    
    [truckA cashOut];
    [truckB cashOut];
  }
  return 0;
}
