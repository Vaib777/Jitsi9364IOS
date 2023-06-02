/*
 * Copyright @ 2019-present 8x8, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#import "IncomingCallInfo.h"

//@synthesize callerAvatarURL;
//@synthesize callerName;
//@synthesize callerDetails;
//@synthesize hasVideo;

@implementation IncomingCallInfo

- (instancetype _Nullable)initWithCallerAvatarURL:(NSString *_Nullable) callerAvatarURL
                                     andCallerName:(NSString *_Nullable) callerName
                                    andCallerDetails:(NSString *_Nullable) callerDetails
                                      andhasVideo:(BOOL) hasVideo {
    self = [super init];
    if (self) {
        self.callerAvatarURL = callerAvatarURL;
        self.callerName = callerName;
        self.callerDetails = callerDetails;
        self.hasVideo = hasVideo;
    }

    return self;
}

- (NSDictionary *)asDict {
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];

    if (self.callerAvatarURL != nil) {
        dict[@"callerAvatarURL"] = self.callerAvatarURL;
    }

    if (self.callerName != nil) {
        dict[@"callerName"] = self.callerName;
    }
    
    if (self.callerDetails != nil) {
        dict[@"callerDetails"] = self.callerDetails;
    }
    dict[@"hasVideo"] = [NSNumber numberWithBool:self.hasVideo];

    return dict;
}
@end
