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


-(int)getValue{
    return _value;
}

@end