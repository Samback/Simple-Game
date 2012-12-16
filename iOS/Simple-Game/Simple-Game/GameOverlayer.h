//
//  GameOverlayer.h
//  Simple-Game
//
//  Created by Max on 16.12.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface GameOverlayer : CCLayerColor {
    
}
+(CCScene *) sceneWithWon:(BOOL)won;
- (id)initWithWon:(BOOL)won;
@end
