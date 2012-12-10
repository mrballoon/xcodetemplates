//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"


@implementation ___FILEBASENAMEASIDENTIFIER___

#ifdef __CC_PLATFORM_IOS

- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    
    CGPoint touchLocation = [touch locationInView:[touch view]];
	touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];

#else
-(BOOL) ccMouseDown:(NSEvent*)event
{
    CGPoint touchLocation = [(CCDirectorMac*)[CCDirector sharedDirector] convertEventToGL:event];
    
#endif
    
    return true;
}
    
    
#ifdef __CC_PLATFORM_IOS
    
- (void)ccTouchMoved:(UITouch *)touch withEvent:(UIEvent *)event{
        
    CGPoint touchLocation = [touch locationInView:[touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];

#else
-(BOOL) ccMouseDragged:(NSEvent*)event{
    
    CGPoint touchLocation = [(CCDirectorMac*)[CCDirector sharedDirector] convertEventToGL:event];
    
#endif
    
    
#ifdef __CC_PLATFORM_MAC
    return true;
#endif
    
}
    
#ifdef __CC_PLATFORM_IOS
    
- (void)ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event{
    
    CGPoint touchLocation = [touch locationInView:[touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
        
#else
-(BOOL) ccMouseUp:(NSEvent*)event{
    
    CGPoint touchLocation = [(CCDirectorMac*)[CCDirector sharedDirector] convertEventToGL:event];
    
#endif
    
    
    
#ifdef __CC_PLATFORM_MAC
    return true;
#endif
    
}

    
@end
