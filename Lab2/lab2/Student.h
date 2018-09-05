//
//  Student.h
//  lab2
//
//  Created by Kenta Kodashima on 2018-09-05.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
// define public properties
// define public methods
- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country;

- (NSString *) getName;
- (NSString *) getCountry;

@property (nonatomic, assign) int identification;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *country;

@end
