//
//  ScientificCalculator.h
//  Calculator
//
//  Created by Sharma, Preety - Contractor {BIS} on 5/27/17.
//  Copyright © 2017 Sharma, Preety - Contractor {BIS}. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

@interface ScientificCalculator : Calculator
-(float) sin :(float) num;
-(float) cos :(float) num;
-(float) tan :(float) num;
-(float) log :(float) num;
-(double) power :(double) a withExponent:(double)b;
-(double) multiExp:(NSArray*)arrayOfNum with:(NSArray*)arrayOfNum;
-(double) divideExp:(NSArray*)arrayOfExp by:(NSArray*)arrayOfSecondExp;
@end
