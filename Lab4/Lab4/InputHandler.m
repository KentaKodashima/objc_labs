//
//  InputHandler.m
//  Lab4
//
//  Created by Kenta Kodashima on 2018-09-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init
{
  self = [super init];
  if (self) {
    _history = [[NSMutableArray alloc] init];
  }
  return self;
}

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



- (NSString *)description
{
  NSMutableString *result = [NSMutableString new];
  int historyCount = [_history count];
  int index = historyCount - 1;
  int counter = 0;
  while (counter < 3) {
    NSString *contactString = [NSString stringWithFormat:@"\n%@", _history[index]];
    [result appendString:contactString];
    counter++;
    index--;
  }
  
  return result;
}

@end
