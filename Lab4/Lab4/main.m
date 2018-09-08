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
    InputHandler *historyRecorder = [[InputHandler alloc] init];
    
    while (true) {
      NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\nshow - Show nth contact details info\nfind - find contacts which contain a keyword\nhistory - show command history> ";
      
      NSString *option = [InputHandler getUserInputWithLength: 20 withPrompt: menu];
      NSLog(@"%@", option);
      
      if ([option isEqualToString:@"quit"]) {
        [[historyRecorder history] addObject:option];
        break;
      } else if ([option isEqualToString:@"new"]) {
        [[historyRecorder history] addObject:option];
        // 1.1. get user input for email
        NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter email: "];
        
        // Bonus 3: Error handling for duplicates
        int counter = 0;
        for (Contact *contact in [contactList contactList]) {
          if ([email isEqualToString: contact.email]) {
            counter++;
          }
        }
        
        if (counter != 0) {
          NSLog(@"The email you entered is already exists.");
        } else {
          // 1.2. get user input for name
          NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter name: "];
          
          // 1.3. ask and get phone numbers
          NSString *label = [NSString alloc];
          NSString *number= [NSString alloc];
          while (true) {
            NSString *askPhone = [InputHandler getUserInputWithLength:255 withPrompt:@"\nDo you want to add your phone number? y/n: "];
            
            if ([askPhone isEqualToString: @"n"]) {
              break;
            } else {
              label = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter your phone's label: "];
              number = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter your phone numbers: "];
            }
          }
          
          // 2. create a contact object based on the user input
          Contact *newContact = [[Contact alloc] initWithName: name andEmail: email];
          
          // 3. add the contact to ContactList's contacctList
          [contactList addContact: newContact];
        }
      } else if ([option isEqualToString:@"list"]) {
        [[historyRecorder history] addObject:option];
        NSLog(@"%@", contactList);
      } else if ([option isEqualToString:@"show"]) {
        [[historyRecorder history] addObject:option];
        NSString *index = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter index number of the contact: "];
        int indexNum = [index intValue];
        int contactListCount = [[contactList contactList] count];
        
        if (contactListCount == 0) {
          NSLog(@"Your don't have any contact registered yet.");
        } else if (indexNum > contactListCount - 1 || indexNum < 0) {
          NSLog(@"The number you entered is invalid.");
        } else {
          Contact *contactWithId = [contactList contactList][indexNum];
          [contactWithId contactDetail];
        }
      } else if ([option isEqualToString:@"find"]) {
        [[historyRecorder history] addObject:option];
        NSString *keyword = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter a keyword to search: "];
        NSLog(@"%@", [contactList searchForKeywordWith:keyword]);
      } else if ([option isEqualToString:@"history"]) {
        NSLog(@"%@", [historyRecorder history]);
        [[historyRecorder history] addObject:option];
      }
    }
  }
  return 0;
}
