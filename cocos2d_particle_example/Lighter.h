//
//  HelloWorldLayer.h
//  cocos2d_particle_example
//
//  Created by Fernando Ribeiro on 03/05/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface Lighter : CCLayer <UIAccelerometerDelegate>
{
}

@property (nonatomic,assign) CCParticleSystemQuad *fire;
// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
