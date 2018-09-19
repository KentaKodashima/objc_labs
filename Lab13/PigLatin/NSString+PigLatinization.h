//
//  NSString+PigLatinization.h
//  PigLatin
//
//  Created by Kenta Kodashima on 2018-09-17.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (PigLatinization)

//- (Boolean)checkPrefix:(NSArray *)tempArr targetStrArr:(NSArray *)vowels;
- (Boolean)checkPrefixWithTargetStrArr:(NSArray *)vowels;
- (NSString *) stringPigLatinized;

@end
