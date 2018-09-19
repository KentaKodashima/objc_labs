//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by Kenta Kodashima on 2018-09-17.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

- (Boolean)checkPrefix:(NSArray *)srcStrArr targetStrArr:(NSArray *)vowels {
  for (NSString *word in srcStrArr) {
    for (NSString *vowel in vowels) {
      if ([word hasPrefix: vowel]) {
        return true;
      }
    }
  }
  return false;
}

- (NSString *) stringPigLatinized {
  NSString *pigLatinizedStr;
  
  // Define vowels and clusters
  NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u", @"A", @"E", @"I", @"O", @"U"];
  NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl", @"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"];
  
  // 1. split the string into words (NSMutableArray)
  NSArray *tempArr = [self componentsSeparatedByCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
  
  // 2. check if the word begins with vowel or consonant
  // 2-5. if it's consonant, check "y" position.
  // 3. do pigLatinization
  if ([self checkPrefix:tempArr targetStrArr:vowels]) {
    pigLatinizedStr = [self stringByAppendingString:@"yay"];
  } else if ([self checkPrefix:tempArr targetStrArr:clusters]) {
    NSRange cluster = NSMakeRange(0, 2);
    NSRange restOfChars = NSMakeRange(2, (([self length]-1) - 2));
    NSString *clusterStr = [self substringWithRange:cluster];
    NSString *restStr = [self substringWithRange:restOfChars];
    NSString *combine = [restStr stringByAppendingString:clusterStr];
    pigLatinizedStr = [combine stringByAppendingString:@"ay"];
  } else {
    NSRange firstChar = NSMakeRange(0, 1);
    NSRange restOfChars = NSMakeRange(1, [self length]-1);
    NSString *subStr = [self substringWithRange:firstChar];
    NSString *subStrs = [self substringWithRange:restOfChars];
    NSString *combine = [subStrs stringByAppendingString: subStr];
    pigLatinizedStr = [combine stringByAppendingString:@"ay"];
  }
  
  return pigLatinizedStr;
}

@end
