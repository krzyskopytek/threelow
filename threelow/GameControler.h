//
//  GameControler.h
//  threelow
//
//  Created by Krzysztof Kopytek on 2016-05-04.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameControler: NSObject

@property NSMutableArray *collectionOfFiveDices;
@property NSMutableArray *collectionOfFiveDicesStates;

-(void) rollDices;
-(int) showDices;
-(int) score;
-(void) setToHold :(int) index;
-(void) setToUnHold :(int) index;

@end
