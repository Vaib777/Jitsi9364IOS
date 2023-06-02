//
//  JSCommunicateComponent.h
//  sdk
//
//  Created by Sarang Deshpande on 05/06/22.
//  Copyright © 2022 Jitsi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>



NS_ASSUME_NONNULL_BEGIN

@interface JSCommunicateComponent : RCTEventEmitter <RCTBridgeModule>

-(void)stopTimer;
-(void)startTimer;
-(void)sendConnectionStatus:(NSString *)statusString;
@end

NS_ASSUME_NONNULL_END
