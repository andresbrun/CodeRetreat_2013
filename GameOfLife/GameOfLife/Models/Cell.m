//
//  Cell.m
//  GameOfLife
//
//  Created by Andrés Brun on 14/12/13.
//  Copyright (c) 2013 CodeRetreat. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (id) initCellAlive: (BOOL) alive
{
    self = [super init];
    
    self.alive = alive;
    
    return self;
}

@end
