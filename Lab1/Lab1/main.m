//
//  main.m
//  Lab1
//
//  Created by Kenta Kodashima on 2018-09-04.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *prompt) {
  // 255 unit long array of characters
  char inputChars[255];
  NSLog(@"%@", prompt);
  
  // limit input to max 255 characters
  // fgets = C func
  // fgets's 'f' stands for function
  // fgets's 's' stands for string
  fgets(inputChars, 255, stdin);
  
  // convert char array in C to an NSString object
  NSString *inputString = [NSString stringWithUTF8String: inputChars];
  
  // print NSString object
  NSLog(@"Input was: %@", inputString);
  
  // stringByTrimmingCharactersInSet is a func which returns [NSCharacterSet whitespaceAndNewlineCharacterSet]
  return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

static void printUppercasedStr(NSString *inputStr) {
  NSLog(@"%@", [inputStr uppercaseString]);
}

static void printLowercasedStr(NSString *inputStr) {
  NSLog(@"%@", [inputStr lowercaseString]);
}

static void printAsInt(NSString *inputStr) {
  // As NSInteger
  // NSInteger inputNSInt = [inputStr integerValue];
  
  int inputInt = [inputStr intValue];
  NSLog(@"%@", inputInt);
}

static void printCanadianizedStr(NSString *inputStr) {
  // Another way to concat
  // NSString *canadianized = [input stringByAppendingString: @", eh?"];
  
  NSString *canadianized = [NSString stringWithFormat:@"%@%@", inputStr, @", eh?"];
  NSLog(@"%@", canadianized);
}

static void printRespond(NSString *inputStr) {
  NSString *lastChar = [inputStr substringFromIndex: [inputStr length] - 1];
  if ([lastChar isEqualToString: @"?"]) {
    NSLog(@"%@", @"I don't know");
  } else if ([lastChar isEqualToString: @"!"]) {
    NSLog(@"%@", @"Whoa, calm down!");
  }
}

static void printDeSpacedStr(NSString *inputStr) {
  NSString *deSpace = [inputStr stringByReplacingOccurrencesOfString: @" " withString: @"-"];
  NSLog(@"%@", deSpace);
}

static void printOptions() {
  NSLog(
        @"%@%@%@%@%@%@%@%@",
        @"\nPlease select your option from below:\n",
        @"1. Uppercase\n",
        @"2. Lowercase\n",
        @"3. Numberize\n",
        @"4. Canadianize\n",
        @"5. Respond\n",
        @"6. De-Space-It\n",
        @"9. Quit"
        );
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    while (TRUE) {
      printOptions();
      
      NSString *inputNum = getUserInput(@"Enter an option number here: ");
      
      if ([inputNum isEqual: @"9"]) {
        return 0;
      }
      
      NSString *inputStr = getUserInput(@"Enter some texts here: ");
      
      if ([inputNum isEqual: @"1"]) {
        // 1. Uppercased
        printUppercasedStr(inputStr);
      } else if ([inputNum isEqual: @"2"]) {
        // 2. Lowercased
        printLowercasedStr(inputStr);
      } else if ([inputNum isEqual: @"3"]) {
        // 3. Numberize
        printAsInt(inputStr); // NSInteger = long
      } else if ([inputNum isEqual: @"4"]) {
        // 4. Canadianize
        printCanadianizedStr(inputStr);
      } else if ([inputNum isEqual: @"5"]) {
        // 5. Respond
        printRespond(inputStr);
      } else if ([inputNum isEqual: @"6"]) {
        // 6. De-Space-It
        printDeSpacedStr(inputStr);
      }
    }
  }
  return 0;
}
