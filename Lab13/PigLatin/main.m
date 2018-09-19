//
//  main.m
//  PigLatin
//
//  Created by Kenta Kodashima on 2018-09-17.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    while (true) {
      
      NSString *input = [InputHandler getUserInputWithLength:100 withPrompt: @"Enter a word you want to piglatinize or 'quit' to quit: "];
      
      if ([input isEqualToString:@"quit"]) {
        break;
      } else {
        NSLog(@"%@", [input stringPigLatinized]);
        NSLog(@"");
      }
      
    }
  }
  return 0;
}
