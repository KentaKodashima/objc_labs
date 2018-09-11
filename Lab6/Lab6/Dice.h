//
//  Dice.h
//  Lab6
//
//  Created by Kenta Kodashima on 2018-09-11.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSInteger faceValue;
@property (nonatomic, assign) Boolean isHeld;

- (void) roll;
+ (instancetype) dice;

@end
