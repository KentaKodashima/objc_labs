//
//  Prescription.h
//  Lab7
//
//  Created by Kenta Kodashima on 2018-09-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject

@property (nonatomic, strong) NSString *prescriptionId;
@property (nonatomic, strong) NSDate *prescribedDate;
@property (nonatomic, strong) NSMutableArray *prescriptedMedicine;
@property (nonatomic, strong) NSString *docterName;
@property (nonatomic, strong) NSString *medicine;

- (instancetype)initWithDoctorName: (NSString *) doctorName andSympton: (NSString *) sympton;

@end
