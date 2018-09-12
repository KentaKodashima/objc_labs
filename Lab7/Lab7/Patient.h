//
//  Patient.h
//  Lab7
//
//  Created by Kenta Kodashima on 2018-09-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSUInteger *age;
@property (nonatomic, strong) NSString *sympton;
@property (nonatomic, strong) NSMutableArray *prescriptions;
@property (nonatomic, strong) NSString *receivedMedicine;

- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger) age andHealthcard: (Boolean) card;
- (Boolean) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;

@end
