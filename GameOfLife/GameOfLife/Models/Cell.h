//
//  Cell.h
//  GameOfLife
//
//  Created by Andrés Brun on 14/12/13.
//  Copyright (c) 2013 CodeRetreat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject

@property (nonatomic, assign) BOOL alive;

- (id) initCellAlive: (BOOL) alive;

@end
