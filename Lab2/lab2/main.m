//
//  main.m
//  lab2
//
//  Created by Kenta Kodashima on 2018-09-05.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
    Box *box2 = [[Box alloc] initWithWidth:5 andHeight:5 andLength:5];
    NSLog(@"%.2f", [box1 volume]);
    
    NSLog(@"%.2f", [box1 ratio:box2]);
    
//    // First alloc for a Student
//    Student *student1 = [[Student alloc] initWithId:1 andName:@"Kenta" andCountry:@"Kodashima"];
//
//    NSLog(@"%@", [student1 identification]);
//    [student1 setIdentification:10];
//    NSLog(@"%@", [student1 identification]);
//
//    NSLog(@"%@", [student1 name]);
//    [student1 setName:@"Kenta"];
//    NSLog(@"%@", [student1 name]);
  }
  return 0;
}
