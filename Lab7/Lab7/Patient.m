//
//  Patient.m
//  Lab7
//
//  Created by Kenta Kodashima on 2018-09-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient() {
  @private Boolean healthCard;
}
@end

@implementation Patient

- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger) age andHealthcard: (Boolean) card
{
  self = [super init];
  if (self) {
    _name = name;
    _age = age;
    _sympton = @"Healty";
    _receivedMedicine = @"None";
    _prescriptions = [NSMutableArray new];
    healthCard = card;
  }
  return self;
}

- (Boolean) visitDoctor: (Doctor *) doctor {
  return [doctor acceptPatient: self withHealthCard: healthCard];
}

- (void) requestMedication: (Doctor *) doctor {
  // 1. doctor checcking if self(patient) is in the patient list or not
  if ([doctor prescribeMedication: self]) {
    NSLog(@"Got the medication!");
  } else {
    NSLog(@"Rejected. No medication.");
  }
}

@end
