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
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        GameControler *gameControler = [[GameControler alloc]init];
        

        //promptString
        NSString *promptString = @"Do you want to play Threelow? (yes/no)";
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        NSString *inputString;
        
        do {
            inputString = [inputCollector inputForPrompt:promptString];
            
            if([inputString isEqualToString:@"yes"]){
                
                [gameControler rollDices];
                [gameControler showDices];
                
                printf("\nYour score is : %i",[gameControler score]);
                promptString = @"\nWhich dice do you want to hold? (1-5 or 0 for none)";
                inputString = [inputCollector inputForPrompt:promptString];
                
                [gameControler setToHold:[inputString intValue]];
                [gameControler showDices];
                
                
                
                if([inputString isEqualToString:@"0"]){
                    printf("Your final score is %i. Congrats!\n",[gameControler score]);
                    break;
                }
                
                
            }
            else {
                
                printf("Bye bye");
                break;
            }
            
        } while (true);
        
        
        
    }
    return 0;
}

