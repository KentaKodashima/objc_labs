//
//  main.m
//  Lab7
//
//  Created by Kenta Kodashima on 2018-09-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    Doctor *doctor = [[Doctor alloc] initWithName: @"John" andSpecialization: @"Internal Medicine"];
    Patient *patient1 = [[Patient alloc] initWithName:@"Kenta" andAge: 26 andHealthcard: true];
    Patient *patient2 = [[Patient alloc] initWithName:@"Kodashima" andAge: 26 andHealthcard: false];
    
    if ([patient1 visitDoctor: doctor]) {
      [patient1 requestMedication: doctor];
    }
    
    [patient2 requestMedication: doctor];
    if ([patient2 visitDoctor: doctor]) {
      [patient2 requestMedication: doctor];
    }
    
  }
  return 0;
}
