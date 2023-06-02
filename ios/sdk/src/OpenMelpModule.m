//
//  OpenMelpModule.m
//  JitsiMeetSDK
//
//  Created by Sarang Deshpande on 30/05/22.
//  Copyright © 2022 Jitsi. All rights reserved.
//



#import "OpenMelpModule.h"


@implementation OpenMelpModule

//RCT_EXPORT_MODULE(NativeCallsNew);
RCT_EXPORT_MODULE();

- (instancetype)init
{
    if (self = [super init]) {
        _emailList = [[NSMutableArray alloc] init];
        _totalCount = 0;
        _updatedUserName = @"";
        _networkStatus = @"";
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup {
    return NO;
}

RCT_EXPORT_METHOD(showToast) {
    NSLog(@"showToast");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"SHOW_TOAST"
            object:self];
}

RCT_EXPORT_METHOD(wifiStatus) {
    NSLog(@"wifiStatus");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"WIFI_STATUS"
            object:self];
}

RCT_EXPORT_METHOD(showDesktop) {
    NSLog(@"showDesktop");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"SHOW_DESKTOP"
            object:self];
}

RCT_EXPORT_METHOD(signalStrength: (NSInteger)signalPercent) {
    // NSLog(@"signalPercent %ld", (long)signalPercent);
    // [[NSNotificationCenter defaultCenter]
    //         postNotificationName:@"SIGNAL_STRENGTH"
    //  object:self userInfo:@{@"signalPercent" : [NSNumber numberWithInteger:signalPercent]}];
}

RCT_EXPORT_METHOD(addToCall) {
    NSLog(@"addToCall");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"ADD_TO_CALL"
            object:self];
}

RCT_EXPORT_METHOD(OpenChat) {
    NSLog(@"OpenChat");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"OPEN_CHAT"
            object:self];
}

RCT_EXPORT_METHOD(hangup) {
    NSLog(@"hangup 78");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"HANG_UP"
            object:self];
}

RCT_EXPORT_METHOD(etharpad) {
    NSLog(@"etharpad");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"EATHARPAD"
            object:self];
}

RCT_EXPORT_METHOD(etharpadinside: (NSString*)url) {
    NSLog(@"etharpadinside");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"EATHERPAD_INSIDE"
     object:nil userInfo:@{@"url" : url}];
}

RCT_EXPORT_METHOD(showAttendeeeees) {
    NSLog(@"showAttendeeeees");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"SHOW_ATTENDEES"
     object:nil];
    
}

RCT_EXPORT_METHOD(viewAttendeesjitsi:(NSArray *) strings) {
    NSLog(@"viewAttendeesjitsi");
    [_emailList removeAllObjects];
    for (NSInteger i = 0; i < strings.count; i++) {
        [_emailList addObject:[strings objectAtIndex:i]];
    }
    
}

RCT_EXPORT_METHOD(viewAttendees) {
    NSLog(@"viewAttendees");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"VIEW_ATTENDEES"
     object:nil userInfo:@{@"arraylist" : _emailList}];
}

RCT_EXPORT_METHOD(etharpadclick) {
    NSLog(@"etharpadclick");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"EATHERPAD_CLICK"
     object:nil];
}

RCT_EXPORT_METHOD(totalUsers: (NSInteger)count) {
    NSLog(@"totalUsers 130 %ld", (long)count);
    if (count != _totalCount) {
        _totalCount = count;
        [[NSNotificationCenter defaultCenter]
                postNotificationName:@"TOTAL_USERS"
         object:nil userInfo:@{@"totalusercounts" : [NSNumber numberWithInteger:_totalCount]}];
    }
}

RCT_EXPORT_METHOD(updatedUserName: (NSString *)username) {
    NSLog(@"updatedUserName %@", username);
    if ([username caseInsensitiveCompare:_updatedUserName] != NSOrderedSame) {
        _updatedUserName = username;
        [[NSNotificationCenter defaultCenter]
                postNotificationName:@"UPDATE_USER_NAME"
         object:nil userInfo:@{@"updatedusername" : _updatedUserName}];
    }
}

RCT_EXPORT_METHOD(showAttendees: (NSArray *)attendees) {
    NSLog(@"showAttendees %@", attendees);
    [_emailList removeAllObjects];
    for (NSInteger i = 0; i < attendees.count; i++) {
        [_emailList addObject:[attendees objectAtIndex:i]];
    }
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"SHOW_ATTENDEES"
     object:nil userInfo:@{@"arraylist" : _emailList}];
}

RCT_EXPORT_METHOD(isAudioMode: (BOOL )audioMode) {
    NSLog(@"isAudioMode %d", audioMode);
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"IS_AUDIO_MODE"
     object:nil userInfo:@{@"value" : (audioMode)? [NSNumber numberWithInt:1] :  [NSNumber numberWithInt:0]}];
}

RCT_EXPORT_METHOD(holdclick: (BOOL)isHold) {
    NSLog(@"holdclick ");
    [[NSNotificationCenter defaultCenter]
            postNotificationName:@"HOLD_CLICK"
            object:self];
}

@end
