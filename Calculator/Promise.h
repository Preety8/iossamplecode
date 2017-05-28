//
//  Promise.h
//  Calculator
//
//  Created by Sharma, Preety - Contractor {BIS} on 5/27/17.
//  Copyright © 2017 Sharma, Preety - Contractor {BIS}. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Promise : NSThread

@property (nonatomic) BOOL isRejected;
@property (nonatomic) BOOL isFulfilled;
-(id) initWithTimeInterval:(NSTimeInterval)timeinterval withObject:(id)object withMethod:(NSString*)methodName withObject:(NSArray*)objects;
@end
