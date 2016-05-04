//
//  main.m
//  threelow
//
//  Created by Krzysztof Kopytek on 2016-05-04.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameControler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        GameControler *gameControler = [[GameControler alloc]init];
        

        [gameControler rollDices];
        [gameControler showDices];
        
        
    }
    return 0;
}
