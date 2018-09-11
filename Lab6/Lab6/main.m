//
//  main.m
//  Lab6
//
//  Created by Kenta Kodashima on 2018-09-11.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    GameController *player1 = [[GameController alloc] init];
    
    while (true) {
      NSString *input = [InputHandler getUserInputWithLength:10 withPrompt: @"\n'roll' to roll the dice.\n'quit' to exit the game.\n'hold' to hold the dice.\n'unhold' to unhold the dice.\n'reset' to reset the dice."];
      if ([input isEqualToString:@"roll"]) {
        [player1 roll];
        [player1 displayScore];
      } else if ([input isEqualToString:@"quit"]) {
        break;
      } else if ([input isEqualToString:@"hold"]) {
        NSString *inputIndex = [InputHandler getUserInputWithLength:10 withPrompt: @"Enter the index of the dice you want to hold."];
        NSInteger inputIndexAsInt = [inputIndex integerValue] - 1;
        Dice *dieVal = [player1.displayDice objectAtIndex: inputIndexAsInt];
        if (dieVal.isHeld == false) {
          [player1 holdDie: inputIndexAsInt];
        } else {
          NSLog(@"The dice is already held.");
        }
        [player1 displayScore];
      } else if ([input isEqualToString:@"unhold"]) {
        NSString *inputIndex = [InputHandler getUserInputWithLength:10 withPrompt: @"Enter the index of the dice you want to unhold."];
        NSInteger inputIndexAsInt = [inputIndex integerValue] - 1;
        Dice *dieVal = [player1.displayDice objectAtIndex: inputIndexAsInt];
        if (dieVal.isHeld == true) {
          [player1 holdDie: inputIndexAsInt];
        } else {
          NSLog(@"The dice is not held.");
        }
        [player1 displayScore];
      } else if ([input isEqualToString:@"reset"]) {
        [player1 resetDice];
        [player1 displayScore];
      }
    }
    // init using convenience init
//    Dice *dice = [Dice dice];
//    NSLog(@"%@", dice);
  }
  return 0;
}
