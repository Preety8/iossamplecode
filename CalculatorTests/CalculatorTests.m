//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Sharma, Preety - Contractor {BIS} on 5/27/17.
//  Copyright © 2017 Sharma, Preety - Contractor {BIS}. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"
#import "ScientificCalculator.h"
#include <math.h>
#import "Promise.h"

@interface CalculatorTests : XCTestCase
@property (nonatomic) ScientificCalculator *calculator;
@property (nonatomic) Calculator *calc;
@end

@implementation CalculatorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.calculator = [ScientificCalculator new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddition {
    
    XCTAssertTrue([self.calculator add:1 withNum:2] == 3, @"The objects should be equal");
}

- (void)testSubtraction {
    
    XCTAssertTrue([self.calculator subtract:2 fromNum:9] == 7, @"The objects should be equal");
}

- (void)testMultiple {
    
    XCTAssertTrue([self.calculator multiple:4 withNum:3] == 12, @"The objects should be equal");
}


- (void)testDivide {
    
    XCTAssertTrue([self.calculator divide:10 byNum:2] == [NSNumber numberWithDouble:5], @"The objects should be equal");
}

- (void)testNotDividable {
    
    XCTAssertTrue([[NSDecimalNumber notANumber] isEqualToNumber:[self.calculator divide:5 byNum:0]], @"The objects should be equal");
}


- (void)testExtendsCalculator {
    
    XCTAssertTrue([self.calculator isKindOfClass:[Calculator class]], @"The objects should be equal");
    XCTAssertTrue([self.calculator isKindOfClass:[ScientificCalculator class]], @"The objects should be equal");
}

- (void)testSine {
    // calculator.sin( Math.PI / 2 ) ).to.equal( 1 )
    XCTAssertTrue([self.calculator sin:M_PI/2] == 1, @"The objects should be equal");
}

- (void)testCosine {
    // calculator.cos( Math.PI ) ).to.equal( -1 )
    XCTAssertTrue([self.calculator cos:M_PI] == -1, @"The objects should be equal");
}

- (void)testTangent {
    // calculator.tan( 0 ) ).to.equal( 0 )
    XCTAssertTrue([self.calculator tan:0] == 0, @"The objects should be equal");
}

- (void)testLog {
    // calculator.log( 1 ) ).to.equal( 0 )
    XCTAssertTrue([self.calculator log:1] == 0, @"The objects should be equal");
}

- (void)testPower {
    // calculator.log( 1 ) ).to.equal( 0 )
    XCTAssertTrue([self.calculator power:2 withExponent:3] == 8, @"The objects should be equal");
}

- (void)testMutipleExponent {
    // calculator.log( 1 ) ).to.equal( 0 )
    NSArray *array = [NSArray arrayWithObjects:[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:3], nil];
    NSArray *array1 = [NSArray arrayWithObjects:[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:4], nil];
    XCTAssertTrue([self.calculator multiExp:array with:array1] == 128, @"The objects should be equal");
}

- (void)testDivideExponent {
    // calculator.log( 1 ) ).to.equal( 0 )
    NSArray *array = [NSArray arrayWithObjects:[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:3], nil];
    NSArray *array1 = [NSArray arrayWithObjects:[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:5], nil];
    XCTAssertTrue([self.calculator divideExp:array by:array1] == 0.25, @"The objects should be equal");
}

- (void)testDelay {
    
    NSArray *objects = [NSArray arrayWithObjects:[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:3], nil];
    id willAdd = [[Promise alloc] initWithTimeInterval:100 withObject:self.calculator withMethod:@"add" withObject:objects];
    XCTAssertTrue([willAdd isFulfilled], @"The objects should be equal");
}

- (void)testNotExistingMethod {
    
    NSArray *objects = [NSArray arrayWithObjects:[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:3], nil];
    id willAdd = [[Promise alloc] initWithTimeInterval:100 withObject:self.calculator withMethod:@"sqrt" withObject:objects];
    XCTAssertTrue([willAdd isKindOfClass:[Promise class]], @"The objects should be equal");
    XCTAssertTrue([willAdd isRejected], @"The objects should be equal");
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}




@end
