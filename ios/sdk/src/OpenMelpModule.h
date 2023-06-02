//
//  OpenMelpModule.h
//  sdk
//
//  Created by Sarang Deshpande on 30/05/22.
//  Copyright © 2022 Jitsi. All rights reserved.
//

#import <React/RCTBridge.h>

@interface OpenMelpModule : NSObject<RCTBridgeModule>

@property (nonatomic, copy, nullable) NSMutableArray * emailList;
@property (nonatomic, assign) NSInteger totalCount;
@property (nonatomic, copy, nullable) NSString * updatedUserName;
@property (nonatomic, copy, nullable) NSString * networkStatus;
@end
