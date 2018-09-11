//
//  GameController.m
//  Lab6
//
//  Created by Kenta Kodashima on 2018-09-11.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
#define MAX_ROLL 5

@interface GameController()
{
  @private int rollCount;
}
@end

@implementation GameController

- (instancetype)init
{
  self = [super init];
  if (self) {
    // Should put nil as the last object
    _displayDice = [NSMutableArray arrayWithObjects: [Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil];
    _score = 0;
    rollCount = MAX_ROLL;
  }
  return self;
}

- (void) roll {
  // if I have more than one roll count left
  // I can roll all five dice in the array
  // except for the ones that are held by user
  if (rollCount > 0) {
    for (Dice *die in _displayDice) {
      if (![die isHeld]) {
        [die roll];
      }
    }
    rollCount--;
    if (rollCount == 0) {
      self.holdAll;
    }
  } else {
    NSLog(@"You can't roll more than %d times.", MAX_ROLL);
  }
}

- (void) displayCurrentDeck {
  NSMutableString *currentDeck = [NSMutableString string];
  for (Dice *die in _displayDice) {
    [currentDeck appendFormat:@" %@ ", [die description]];
  }
  NSLog(@"%@", currentDeck);
}

- (void) holdDie: (NSUInteger) die {
  if (rollCount == 0) {
    NSLog(@"The game is finished! Just 'quit' the game!");
  } else {
    // 1. check if the die is already held
    // 2. change the held property  of the dice
    if ([_displayDice[die] isHeld]) {
      [_displayDice[die] setIsHeld: false];
    } else {
      [_displayDice[die] setIsHeld: true];
    }
  }
}

- (void) resetDice {
  // 1. iterate through each die, unhold every die
  if (rollCount == 0) {
    NSLog(@"The game is finished! Just 'quit' the game!");
  } else {
    for (Dice *dice in _displayDice) {
      dice.isHeld = false;
    }
  }
}

- (void) holdAll {
  // 1. iterate through each die, hold every die if the rollCount == 0
  if (rollCount == 0) {
    for (Dice *dice in _displayDice) {
      dice.isHeld = true;
    }
  } else {
    NSLog(@"You've got to finish your game!");
  }
}

- (void) displayScore {
  // 1. check if the game is done
  //  - GAME OEVR
  //  - print currentDeck and the score (the sum of face)
  // 2. not over
  //  - print currentDeck and the score (the sum of face)
  int sum = 0;
  for (Dice *dice in _displayDice) {
    if (dice.isHeld == true) {
      sum += dice.faceValue;
    }
  }
  if (rollCount == 0) {
    NSLog(@"GAME OVER");

    self.displayCurrentDeck;
    NSLog(@"Score: %d", sum);
  } else {
    NSLog(@"Remaining Rolls: %d", rollCount);
    self.displayCurrentDeck;
    NSLog(@"Score: %d", sum);
  }
}

@end
