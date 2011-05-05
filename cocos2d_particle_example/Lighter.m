//
//  HelloWorldLayer.m
//  cocos2d_particle_example
//
//  Created by Fernando Ribeiro on 03/05/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//


// Import the interfaces
#import "Lighter.h"

// HelloWorldLayer implementation
@implementation Lighter

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	Lighter *layer = [Lighter node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init] )) {
		
        CCParticleSystemQuad *fire = [CCParticleSystemQuad particleWithFile:@"fire.plist"];
		CGSize size = [[CCDirector sharedDirector] winSize];
		fire.position =  ccp( 130 , 200);
        
        CCSprite *lighter = [CCSprite spriteWithFile:@"bic_lighter.png"];
        lighter.position = ccp(size.width / 2, 100);
        
        
        [self addChild:lighter];
		[self addChild:fire z:-1];
	}
	return self;
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
