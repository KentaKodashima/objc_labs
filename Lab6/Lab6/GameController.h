//
//  GameController.h
//  Lab6
//
//  Created by Kenta Kodashima on 2018-09-11.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *displayDice;
@property (nonatomic, assign) NSInteger score;

- (void) roll;
- (void) displayCurrentDeck;
- (void) holdDie: (NSUInteger) die;
- (void) resetDice;
- (void) holdAll;
- (void) displayScore;

@end
