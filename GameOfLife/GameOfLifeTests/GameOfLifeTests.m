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

- (void)testInitCellAlive
{
    Cell *cell = [[Cell alloc] initCellAlive: YES];
    
    XCTAssertTrue(cell.alive, @"Cell is not alive");
}

- (void)testInitCellDead
{
    Cell *cell = [[Cell alloc] initCellAlive: NO];
    
    XCTAssertFalse(cell.alive, @"Cell is not dead");
}

- (void)testCellIsAliveWithLessTwoAliveNeighbors
{
    Cell *cell = [[Cell alloc] initCellAlive: YES];
    
    [cell updateStatusWithAliveNeighbors: 1];
    
    XCTAssertFalse(cell.alive, @"Cell is not dead");
}

- (void)testCellIsAliveWithMoreThreeAliveNeighbors
{
    Cell *cell = [[Cell alloc] initCellAlive: YES];
    
    [cell updateStatusWithAliveNeighbors: 4];
    
    XCTAssertFalse(cell.alive, @"Cell is not dead");
}

- (void)testCellIsAliveWithTwoOrThreeAliveNeighbors
{
    Cell *cell = [[Cell alloc] initCellAlive: YES];
    
    [cell updateStatusWithAliveNeighbors: 2];
    
    XCTAssertTrue(cell.alive, @"Cell WithAliveNeighbors: 2 is dead");
    
    [cell updateStatusWithAliveNeighbors: 3];
    
    XCTAssertTrue(cell.alive, @"Cell WithAliveNeighbors: 3 is dead");
}

- (void)testCellIsDeadWithThreeAliveNeighborhood
{
    Cell *cell = [[Cell alloc] initCellAlive: NO];
    
    [cell updateStatusWithAliveNeighbors: 3];
    
    XCTAssertTrue(cell.alive, @"Cell is dead");
}

@end
