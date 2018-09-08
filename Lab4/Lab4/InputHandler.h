//
//  InputHandler.h
//  Lab4
//
//  Created by Kenta Kodashima on 2018-09-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property (nonatomic, strong) NSMutableArray *history;

+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt;

@end
