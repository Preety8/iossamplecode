//
//  ScientificCalculator.m
//  Calculator
//
//  Created by Sharma, Preety - Contractor {BIS} on 5/27/17.
//  Copyright © 2017 Sharma, Preety - Contractor {BIS}. All rights reserved.
//

#import "ScientificCalculator.h"

@implementation ScientificCalculator 


-(float) sin :(float) num
{
    return sinf(num);
}

-(float) cos :(float) num
{
    return cosf(num);
}

-(float) tan :(float) num {
    return tanf(num);
}

-(float) log :(float) num {
    return logf(num);
}

-(double) power :(double) a withExponent:(double)b {
    return pow(a,b);
}

-(double) multiExp:(NSArray*)arrayOfExp with:(NSArray*)arrayOfSecondExp {
    if (arrayOfExp.count == 2 && arrayOfSecondExp.count == 2)
    {
        double firstExp = pow([arrayOfExp[0] doubleValue],[arrayOfExp[1] doubleValue]);
        double secondExp = pow([arrayOfSecondExp[0] doubleValue],[arrayOfSecondExp[1]
                                                                  doubleValue]);
        return firstExp*secondExp;
    }
    return NAN;
}

-(double) divideExp:(NSArray*)arrayOfExp by:(NSArray*)arrayOfSecondExp {
    if (arrayOfExp.count == 2 && arrayOfSecondExp.count == 2)
    {
        double firstExp = pow([arrayOfExp[0] doubleValue],[arrayOfExp[1] doubleValue]);
        double secondExp = pow([arrayOfSecondExp[0] doubleValue],[arrayOfSecondExp[1]
                                                                  doubleValue]);
        return firstExp/secondExp;
    }
    return NAN;
}

@end
