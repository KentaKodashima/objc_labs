//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Kenta Kodashima on 2018-09-06.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger rightCount;
@property (nonatomic, assign) NSInteger wrongCount;

+ (void) logScoreWithRight: (int) right withWrong: (int) wrong;

@end
