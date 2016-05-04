//
//  main.m
//  threelow
//
//  Created by Krzysztof Kopytek on 2016-05-04.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        Dice *dice = [[Dice alloc]init];
        
        
            for (int i =0; i<5; i++ ){
                [dice roll];
                [dice show];
            }
    
        
        
    }
    return 0;
}
