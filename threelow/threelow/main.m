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
                
                // =======================================
                // main game holding unholding and rolling
                do {
    
                    
                printf("\nYour score is : %i",[gameControler score]);
                promptString = @"\nWhich dice do you want to hold? (1-5)"\
                               "\nTo unhold dice add \"-\" before (like -2)"\
                               "\nTo reroll type \"roll\" ->";
                inputString = [inputCollector inputForPrompt:promptString];

 
                if([inputString isEqualToString:@"roll"]){
                    
                    //reroll dices
                    [gameControler rollDices];
                    
                }else{
                    
                    if([[inputString substringToIndex:1] isEqualToString:@"-"])
                        [gameControler setToUnHold: [[inputString substringFromIndex:1] intValue]];
                    else//hold particular dice
                    [gameControler setToHold:[inputString intValue]];
                
                }
                 
                    
                if ([gameControler showDices] == 0);
                else break; //end game
                    
                }while(true);
                break;
                // =======================================
                
                
            }
            else {
                break;
            }
            
            
        } while (true);
        printf("\nBye bye"); //end of game
        
        
    }
    return 0;
}

