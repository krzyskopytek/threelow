//
//  Dice.m
//  threelow
//
//  Created by Krzysztof Kopytek on 2016-05-04.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@implementation Dice

-(void) roll{
    _value = (arc4random() % 5) +1;
}

-(void) show{
        
    switch(_value){
            
        case 0:
            NSLog(@"\u2680");
            break;
        case 1:
            NSLog(@"\u2681");
            break;
        case 2:
            NSLog(@"\u2682");
            break;
        case 3:
            NSLog(@"\u2683");
            break;
        case 4:
            NSLog(@"\u2684");
            break;
        case 5:
            NSLog(@"\u2685");
            break;
        default:
            NSLog(@"Still in your hand");
            break;
    }
}

@end