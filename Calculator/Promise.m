//
//  Promise.m
//  Calculator
//
//  Created by Sharma, Preety - Contractor {BIS} on 5/27/17.
//  Copyright © 2017 Sharma, Preety - Contractor {BIS}. All rights reserved.
//

#import "Promise.h"
#import "Calculator.h"

@implementation Promise


//delay ( 100, calculator, 'add', [ 1, 1 ] )
-(id) initWithTimeInterval:(NSTimeInterval)timeinterval withObject:(id)object withMethod:(NSString*)methodName withObject:(NSArray*)objects {
    
    if(self = [super init])
    {
        if ([methodName isEqualToString:@"add"])
        {
            //if ([object respondsToSelector:@selector(add:withNum:)]  && [object isKindOfClass:[Calculator class])
            _isFulfilled = YES;
            dispatch_group_t group = dispatch_group_create();
        
            dispatch_group_async(group,dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^ {
                    [NSThread sleepForTimeInterval:timeinterval];
                    if (objects.count == 2)
                    {
                        int firstParameter = [[objects firstObject] intValue];
                        int secondParameter = [[objects lastObject] intValue];
                        [object add:firstParameter withNum:secondParameter];
                    }
            });
        }
        else {
        _isRejected = YES;
        }
    }
    return self;
}



@end
