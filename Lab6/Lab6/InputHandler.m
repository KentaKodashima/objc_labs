//
//  InputHandler.m
//  Lab6
//
//  Created by Kenta Kodashima on 2018-09-11.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "InputHandler.h"

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt {
  if (maxLength < 1) {
    maxLength = 255;
  }
  
  NSLog(@"%@", prompt);
  char inputChars[maxLength];
  const char *cSting = fgets(inputChars, maxLength, stdin);
  
  NSString *result = [NSString stringWithCString: cSting encoding: NSUTF8StringEncoding];
  NSString *trimedNSString = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
  
  return trimedNSString;
}

@end
