//
//  Calculator.h
//  Calculator
//
//  Created by yu215867812 on 2017/9/15.
//  Copyright © 2017年 yu215867812. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

{
    double accumulator;
    double memory;
    double num;
    double addNum;
    double subNum;
    double multNum;
    double divNum;
}

// Accumulating solutions...
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// Calculating solutions...
-(double) add: (double) value;
-(double) substract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

-(double) changesign;                       //change sign of accumulator
-(double) reciprocal;                       //1/accumulator
-(double) xSquared;                         //accumulator squared

-(double) memory;                           //show memory
-(double) memoryClear;                      //clear memory
-(double) memoryStore;                      //set memory to accumulator
-(double) memoryRecall;                     //set accumulator to memory
-(double) memoryAdd: (double) value;        //add value to memory
-(double) memorySubstract: (double) value;  //substract value from memory

@end
