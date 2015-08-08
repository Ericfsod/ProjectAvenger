//
//  HeroModel.m
//  ProjectAvengers
//
//  Created by Jason Wang on 8/8/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import "HeroModel.h"

@implementation HeroModel

-(id)init {
    if ( self = [super init] ) {
       self.count = [NSMutableArray new];
    }
    return self;
}

@end
