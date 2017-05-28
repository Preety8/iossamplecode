//
//  Calculator.h
//  Calculator
//
//  Created by Sharma, Preety - Contractor {BIS} on 5/27/17.
//  Copyright © 2017 Sharma, Preety - Contractor {BIS}. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
-(int) add:(int)a withNum:(int) b;
-(int) subtract:(int)a fromNum:(int) b;
-(int) multiple:(int)a withNum:(int) b;
-(NSNumber*) divide:(int)a byNum:(int) b;
@end
