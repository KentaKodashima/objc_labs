//
//  main.m
//  Lab3
//
//  Created by Kenta Kodashima on 2018-09-06.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    BOOL gameOn = YES;
    
    // Instance to keep track of scores
    ScoreKeeper *scoreKeeper = [[ScoreKeeper new] init];
    
    while (gameOn) { // TRUE has been made recently
      AdditionQuestion *q = [[AdditionQuestion alloc] init];
      
      NSLog(@"%@", [q question]);
      NSString *userAnswer = [InputHandler getUserInputWithLength: 10 withPrompt:[q question]];
      NSInteger userAnsInt = [userAnswer integerValue];
      if ([q answer] == userAnsInt) {
        // Increase and set rightCount
        [scoreKeeper setRightCount: [scoreKeeper rightCount] + 1];
        NSLog(@"Right!");
        // print log using instance's propeties
        [ScoreKeeper logScoreWithRight: [scoreKeeper rightCount] withWrong: [scoreKeeper wrongCount]];
      } else if ([userAnswer isEqualToString:@"quit"]) {
        gameOn = NO;
      } else {
        // Increase and set wrongCount
        [scoreKeeper setWrongCount: [scoreKeeper wrongCount] + 1];
        NSLog(@"Wrong!");
        // print log using instance's propeties
        [ScoreKeeper logScoreWithRight: [scoreKeeper rightCount] withWrong: [scoreKeeper wrongCount]];
      }
    }
  }
  return 0;
}
