//
//  GameControler.m
//  threelow
//
//  Created by Krzysztof Kopytek on 2016-05-04.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameControler.h"
#import "Dice.h"

@implementation GameControler

// initializaation with 5 dices
- (instancetype)init{
    
    self = [super init];
    if (!self) return nil;
    
    _collectionOfFiveDices = [[NSMutableArray alloc]init];
    _collectionOfFiveDicesStates = [@[@(NO),@(NO),@(NO),@(NO),@(NO)] mutableCopy];
    
    for (int i=0; i<5; i++){
        
        [_collectionOfFiveDices addObject:[[Dice alloc]init]];


    }
                              
    return self;
}

// roll dices method
-(void)rollDices{
    
    for (Dice *dice in _collectionOfFiveDices){
        
        [dice roll];
        
    }
}

//show dices method
    -(void)showDices{
        
        NSArray *arrayOfFaces = @[@"\u2680",@"\u2681",@"\u2682",@"\u2683",@"\u2684",@"\u2685"];
        
        int i=0;
        for (Dice *dice in _collectionOfFiveDices){
            
            

            if([_collectionOfFiveDicesStates[i] boolValue]) printf("[");
            NSString *s = arrayOfFaces[[dice getValue]];
            const char *c = s.UTF8String;
            printf("%s", c);
            if([_collectionOfFiveDicesStates[i] boolValue]) printf("]");
            printf(" ");
            i++;
        }
    
}

//returning score
-(int)score{

    int score = 0;
    for (Dice *dice in _collectionOfFiveDices){
        
        score = score + [dice getValue];
        
    }
    
    return score;
}


-(void)setToHold :(int) index {
    
    _collectionOfFiveDicesStates[index-1] = @(YES);
    
}




@end