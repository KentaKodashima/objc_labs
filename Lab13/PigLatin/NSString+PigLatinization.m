//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by Kenta Kodashima on 2018-09-17.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

- (Boolean)checkPrefixWithTargetStrArr:(NSArray *)vowels {
  for (NSString *vowel in vowels) {
    if ([self hasPrefix: vowel]) {
      return true;
    }
  }
  return false;
}

- (NSString *) stringPigLatinized {
  NSString *pigLatinizedStr;
  NSString *tempStr;
  
  // Define vowels and clusters
  NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u", @"A", @"E", @"I", @"O", @"U"];
  NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl", @"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"];
  
  // 1. split the string into words (NSMutableArray)
  NSArray *tempArr = [self componentsSeparatedByCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
  NSMutableArray *tempModifiedArr = [NSMutableArray new];
  
  for (NSString *word in tempArr) {
    // 2. check if the word begins with vowel or consonant
    // 2-5. if it's consonant, check "y" position.
    // 3. do pigLatinization
    if ([word checkPrefixWithTargetStrArr:vowels]) {
      tempStr = [word stringByAppendingString:@"yay"];
      [tempModifiedArr addObject:tempStr];
    } else if ([word checkPrefixWithTargetStrArr:clusters]) {
      NSRange cluster = NSMakeRange(0, 2);
      NSRange restOfChars = NSMakeRange(2, (([word length]-1) - 2));
      NSString *clusterStr = [word substringWithRange:cluster];
      NSString *restStr = [word substringWithRange:restOfChars];
      NSString *combine = [restStr stringByAppendingString:clusterStr];
      tempStr = [combine stringByAppendingString:@"ay"];
      [tempModifiedArr addObject:tempStr];
    } else {
      NSRange firstChar = NSMakeRange(0, 1);
      NSRange restOfChars = NSMakeRange(1, [word length]-1);
      NSString *subStr = [word substringWithRange:firstChar];
      NSString *subStrs = [word substringWithRange:restOfChars];
      NSString *combine = [subStrs stringByAppendingString: subStr];
      tempStr = [combine stringByAppendingString:@"ay"];
      [tempModifiedArr addObject:tempStr];
    }
  }
  
  pigLatinizedStr = [tempModifiedArr componentsJoinedByString:@" "];
  
  return pigLatinizedStr;
}

@end
