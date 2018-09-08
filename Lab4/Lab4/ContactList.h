//
//  ContactList.h
//  Lab4
//
//  Created by Kenta Kodashima on 2018-09-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactList;

- (void) addContact: (Contact *) newContact;
- (ContactList *) searchForKeywordWith: (NSString *) keyword;

@end
