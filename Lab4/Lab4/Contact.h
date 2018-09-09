//
//  Contact.h
//  Lab4
//
//  Created by Kenta Kodashima on 2018-09-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSMutableDictionary *phone;

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email;

@end
