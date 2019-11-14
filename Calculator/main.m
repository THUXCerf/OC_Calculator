//
//  main.m
//  Calculator
//
//  Created by yu215867812 on 2017/9/15.
//  Copyright © 2017年 yu215867812. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        
        double num;
        
        // get the number...
        NSLog(@"Please enter the number you want:\n");
        scanf("%lf",&num);
        [deskCalc setAccumulator:num];
        
        NSLog(@"%g",[deskCalc accumulator]);
        
        int string;
        
        // show the mode and get the mode you want...
        NSLog(@"addMode = 1;\n");
        NSLog(@"substractMode = 2;\n");
        NSLog(@"multiplyMode = 3;\n");
        NSLog(@"divideMode = 4");
        
        NSLog(@"Please put the mode you want:\n");
        scanf("%i",&string);
        
        // judgeMode...
        if (string == 1) {
            double addNum;
            NSLog(@"Please enter the addNum you want:\n");
            scanf("%lf",&addNum);
            [deskCalc add: addNum];
        } else if (string == 2){
            double subNum;
            NSLog(@"Please enter the number you want:\n");
            scanf("%lf",&subNum);
            [deskCalc substract:subNum];
        } else if (string == 3){
            double multNum;
            NSLog(@"Please enter the number you want:\n");
            scanf("%lf",&multNum);
            [deskCalc multiply:multNum];
        } else if (string == 4){
            double divNum;
            NSLog(@"Please enter the number you want:\n");
            scanf("%lf",&divNum);
            [deskCalc divide:divNum];
        }
        
        
        // show the result...
        NSLog(@"The result is: %lf",[deskCalc accumulator]);
        
        //testing 1...
        NSLog(@"The changesign result is: %g",[deskCalc changesign]);
        NSLog(@"The reciprocal result is: %g",[deskCalc reciprocal]);
        NSLog(@"The xSquared result is: %g",[deskCalc xSquared]);
        
        //testing 2...
        [deskCalc memoryStore];
        [deskCalc clear];
        NSLog(@"The accumulator now is: %g",[deskCalc accumulator]);
        
        [deskCalc memoryAdd:56.0];
        [deskCalc memorySubstract:24.0];
        [deskCalc memoryRecall];
        [deskCalc memoryClear];
        NSLog(@"The memory is: %g",[deskCalc memory]);
        NSLog(@"The accumulator is: %g",[deskCalc accumulator]);
        
    }
    return 0;
}
