//
//  GameOverlayer.m
//  Simple-Game
//
//  Created by Max on 16.12.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "GameOverlayer.h"
#import "HelloWorldLayer.h"

@implementation GameOverlayer
+ (CCScene *)sceneWithWon:(BOOL)won{
    CCScene *scene = [CCScene node];
    GameOverlayer *layer = [[GameOverlayer alloc] initWithWon:won];
    [scene addChild:layer];
    return scene;
}

- (id)initWithWon:(BOOL)won{
    NSString *message = nil;
    if ((self = [super initWithColor:ccc4(255, 255, 255, 255)])) {
        message = won ? @"You Won" : @"You Lose";
    }
    CGSize winSize = [[CCDirector sharedDirector] winSize];
    CCLabelTTF *label = [CCLabelTTF labelWithString:message fontName:@"Arial" fontSize:32];
    label.color = ccc3(0, 0, 0);
    label.position = ccp(winSize.width/2, winSize.height/2);
    [self addChild:label];
    [self runAction:[CCSequence actions:[CCDelayTime actionWithDuration:3], [CCCallBlockN actionWithBlock:^(CCNode * node){
        [[CCDirector sharedDirector] replaceScene:[HelloWorldLayer scene]];
    }], nil]];
    return self;
}
@end
