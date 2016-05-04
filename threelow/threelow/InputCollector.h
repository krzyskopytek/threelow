//
//  InputCollector.h
//  contact-list
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

-(NSString *)inputForPrompt:(NSString *)promptString;

@end
