//
//  Doctor.m
//  Lab7
//
//  Created by Kenta Kodashima on 2018-09-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor() {
  @private NSMutableArray *patientList;
}
@end

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization
{
  self = [super init];
  if (self) {
    _name = name;
    _specialization = specialization;
    patientList = [NSMutableArray new];
  }
  return self;
}

- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard {
  if (healthCard) {
    [patientList addObject: patient];
    NSLog(@"Successfully added to the patient list");
    return true;
  } else {
    NSLog(@"Invalid healthcard");
    return false;
  }
}

- (Boolean) prescribeMedication: (Patient *) patient {
  if ([patientList containsObject: patient]) {
    NSLog(@"Medication on the way...");
    // 1. check the sympton.
    NSString *patientSympton = [patient sympton];
    
    // 2. create a prescription.
    Prescription *prescription = [Prescription alloc];
    [prescription initWithDoctorName: self.name andSympton: patientSympton];
    
    // 3. give the prescription to the patient
    [[patient prescriptions] addObject: prescription];
    
    // 4. give the medication.
    return true;
  } else {
    NSLog(@"You're not my patient.");
    return false;
  }
}

@end
