//
//  main.m
//  Lab4
//
//  Created by Kenta Kodashima on 2018-09-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    ContactList *contactList = [[ContactList alloc] init];
    
    while (true) {
      NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n> ";
      
      NSString *option = [InputHandler getUserInputWithLength: 20 withPrompt: menu];
      NSLog(@"%@", option);
      
      if ([option isEqualToString:@"quit"]) {
        break;
      } else if ([option isEqualToString:@"new"]) {
        // 1. get user input for name and email
        NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter name: "];
        NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter email: "];
        
        // 2. create a contact object based on the user input
        Contact *newContact = [[Contact alloc] initWithName: name andEmail: email];
        
        // 3. add the contact to ContactList's contacctList
        [contactList addContact: newContact];
      } else if ([option isEqualToString:@"list"]) {
        NSLog(@"%@", contactList);
      }
    }
  }
  return 0;
}
