//
//  Prescription.m
//  Lab7
//
//  Created by Kenta Kodashima on 2018-09-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Prescription.h"

@interface Prescription() {
  @private NSDictionary *medicineType;
}
@end

@implementation Prescription

- (instancetype)initWithDoctorName: (NSString *) doctorName andSympton: (NSString *) sympton
{
  self = [super init];
  if (self) {
    _prescriptionId = [[NSUUID UUID] UUIDString];
    _prescribedDate = [NSDate new];
    _prescriptedMedicine = [NSMutableArray new];
    _docterName = doctorName;
    medicineType =
    @{
      @"fever": @"Medicine for fever",
      @"cough": @"Medicine for cough",
      @"infection": @"Medicine for infection",
      @"headache": @"Medicine for headache",
      @"backpain": @"Medicine for back pain"
    };
    _medicine = [medicineType valueForKey:sympton];
  }
  return self;
}

@end
