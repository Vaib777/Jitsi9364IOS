//
//  JSCommunicateComponent.m
//  JitsiMeetSDK
//
//  Created by Sarang Deshpande on 05/06/22.
//  Copyright © 2022 Jitsi. All rights reserved.
//
#import "JSCommunicateComponent.h"

@implementation JSCommunicateComponent
{
    bool hasListeners;
}
RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
    return @[@"startTimer", @"stopTimer" , @"connectionStatus"];
}
-(void)startObserving {
    hasListeners = YES;
}

// Will be called when this module's last listener is removed, or on dealloc.
-(void)stopObserving {
    hasListeners = NO;
}
-(void)startTimer{
    
    [self sendEventWithName:@"startTimer" body:@{@"name": @"startTimer"}];
    NSLog(@"What Sending EVENT EMIT startTimer");

}
-(void)stopTimer{
    
    [self sendEventWithName:@"stopTimer" body:@{@"name": @"stopTimer"}];
    
}
-(void)sendConnectionStatus:(NSString *)statusString{
     [self sendEventWithName:@"connectionStatus" body:@{@"status": statusString}];
}

@end
