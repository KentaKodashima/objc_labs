//
//  Box.h
//  lab2
//
//  Created by Kenta Kodashima on 2018-09-05.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

// assign is for premitive type
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float length;

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length;
- (float) volume;
- (float) ratio: (Box *) box;

@end
