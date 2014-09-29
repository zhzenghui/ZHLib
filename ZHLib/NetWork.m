//
//  NetWork.m
//  NetWork
//
//  Created by mbp  on 13-8-2.
//  Copyright (c) 2013年 zeng hui. All rights reserved.
//

#import "NetWork.h"
#import "Reachability.h"
#import "CCLog.h"


static NetWork *netWork;

@implementation NetWork

- (id) init
{
    self = [super init];
    if (self)
    {
    }
    return self;
}

+ (id)shareNetWork
{
    if (netWork) {
        return netWork;
    }
    netWork = [[NetWork alloc] init];
    return netWork;
}


-(void)reachabilityChanged:(NSNotification*)note
{
    Reachability * reach = [note object];

    if([reach isReachable])
    {
        if (reach.currentReachabilityStatus == ReachableViaWiFi) {
            
            DLog(@"Notification Says ReachableViaWiFi");
        }
        else if (reach.currentReachabilityStatus == ReachableViaWWAN)
        {
            DLog(@"Notification Says ReachableViaWWAN");
        }
    }
    else
    {
        DLog( @"Notification Says Unreachable");
    }
}

- (void)addObserverNetwork   {

    Reachability* reach = [Reachability reachabilityWithHostname:@"www.apple.com"];
    

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityChanged:)
                                                 name:kReachabilityChangedNotification
                                               object:nil];
    
    [reach startNotifier];
}






@end
