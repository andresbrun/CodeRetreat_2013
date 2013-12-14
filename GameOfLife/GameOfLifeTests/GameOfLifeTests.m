//
//  GameOfLifeTests.m
//  GameOfLifeTests
//
//  Created by Andrés Brun on 14/12/13.
//  Copyright (c) 2013 CodeRetreat. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Cell.h"

@interface GameOfLifeTests : XCTestCase{
int _generation;
BOOL _alive;
int _neighbours;
}

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

- (void) testLiveWhenHasTwoNeighbours
{
    //Given
    [self setCellWithNeighbours:2];
    
    // When
    [self nextGeneration];
    
    //Then
    XCTAssertTrue(_alive, @"");
    
}

- (void) testDieWhenHasLessThanTwoNeighbours
{
    //Given
    [self setCellWithNeighbours:0];
    
    
    // When
    [self nextGeneration];
    
    //Then
    XCTAssertTrue(!_alive, @"");
    
}

- (void) testDieWhenHasFourNeighbours
{
    //Given
    [self setCellWithNeighbours:4];
    
    
    // When
    [self nextGeneration];
    
    //Then
    XCTAssertTrue(!_alive, @"");
    
}

#pragma mark - CELL method
- (void) setCellWithNeighbours: (int) neighbours
{
    _generation = 1;
    _alive = YES;
    _neighbours = neighbours;
}

-(void) diedCell
{
    _alive = NO;
}

#pragma mark - LOGIC methods
- (void) nextGeneration
{
    _generation++;
    
    [self updateState];
}

-(void) updateState
{
    if(_neighbours<2 || _neighbours==4)
    {
        [self diedCell];
    }
}



@end
