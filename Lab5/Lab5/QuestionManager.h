//
//  QuestionManager.h
//  Lab5
//
//  Created by Kenta Kodashima on 2018-09-10.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

- (NSString *) timeOutput;

@end
