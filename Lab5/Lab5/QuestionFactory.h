//
//  QuestionFactory.h
//  Lab5
//
//  Created by Kenta Kodashima on 2018-09-10.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes;

- (Question *) generateRandomQuestion;

@end
