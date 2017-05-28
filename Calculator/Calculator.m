//
//  Calculator.m
//  Calculator
//
//  Created by Sharma, Preety - Contractor {BIS} on 5/27/17.
//  Copyright © 2017 Sharma, Preety - Contractor {BIS}. All rights reserved.
//

#import "Calculator.h"
#include <math.h>

@implementation Calculator


-(int) add:(int)a withNum:(int) b {
    return a+b;
}

-(int) subtract:(int)a fromNum:(int) b {
    return b-a;
}

-(int) multiple:(int)a withNum:(int) b {
    return a*b;
}
-(NSNumber*) divide:(int)a byNum:(int) b {
    double result = NAN;
    if ( b == 0)
        return [NSNumber numberWithDouble:result];
    else
        return [NSNumber numberWithDouble:a/b];
}

@end
