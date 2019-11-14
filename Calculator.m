//
//  Calculator.m
//  Calculator
//
//  Created by yu215867812 on 2017/9/15.
//  Copyright © 2017年 yu215867812. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(void) setAccumulator:(double) value{
    accumulator = num;
}

-(void) clear{
    accumulator = 0;
}

-(double) accumulator{
    return accumulator;
}

-(double) add:(double)value{
    accumulator += addNum;
    return accumulator;
}

-(double) substract:(double)value{
    accumulator -= subNum;
    return accumulator;
}

-(double) multiply:(double)value{
    accumulator *= multNum;
    return accumulator;
}

-(double) divide:(double)value{
    accumulator /= divNum;
    return accumulator;
}

-(double) changesign{
    accumulator = -accumulator;
    return accumulator;
}

-(double) reciprocal{
    accumulator = 1/accumulator;
    return accumulator;
}

-(double) xSquared{
    accumulator = accumulator*accumulator;
    return accumulator;
}

-(double) memory{
    return memory;
}

-(double) memoryClear{
    memory = 0.0;
    return memory;
}

-(double) memoryStore{
    memory = accumulator;
    return memory;
}

-(double) memoryRecall{
    accumulator = memory;
    return accumulator;
}

-(double) memoryAdd:(double)value{
    memory += value;
    return memory;
}

-(double) memorySubstract:(double)value{
    memory -= value;
    return memory;
}

@end
