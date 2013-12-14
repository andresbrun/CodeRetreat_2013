//
//  GameOfLifeTests.m
//  GameOfLifeTests
//
//  Created by Andrés Brun on 14/12/13.
//  Copyright (c) 2013 CodeRetreat. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Cell.h"

@interface GameOfLifeTests : XCTestCase

@end

@implementation GameOfLifeTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)cellIsAlive
{
    Cell *cell = [[Cell alloc] initCell];
    
    
    XCTAssertTrue(cell.alive, @"Cell is not alive");
}

@end
