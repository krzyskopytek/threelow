//
//  InputCollector.m
//  contact-list
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{

    
    NSLog(@"%@",promptString);
    
    //255 unit long array of characters
    char inputChars[255];
    
    // limit imput to max 255 characters
    fgets(inputChars, 255, stdin);
    
    //convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String: inputChars];
    inputString = [inputString substringToIndex:[inputString length] - 1];
    
    return inputString;

}

@end
