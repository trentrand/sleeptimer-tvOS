//
//     Generated by class-dump 3.5 (64 bit) (Debug version compiled Oct 15 2018 10:31:50).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2015 by Steve Nygard.
//

#import <objc/NSObject.h>

@interface PBSSystemService : NSObject
{
}

+ (id)sharedInstance;
- (id)infoForProvidersWithType:(id)arg1;
- (void)endpointForProviderType:(id)arg1 withIdentifier:(id)arg2 responseBlock:(id)arg3;
- (void)registerServiceProviderEndpoint:(id)arg1 forProviderType:(id)arg2;
- (void)listen;
- (void)setWantsVolumeButtonEvents:(_Bool)arg1;
- (void)setWantsPlayPauseButtonEvents:(_Bool)arg1;
- (void)pairAppleRemote:(_Bool)arg1 completion:(id)arg2;
- (void)fetchPairedAppleRemoteStateWithCompletion:(id)arg1;
- (void)launchKioskApp;
- (void)setMinimumBackgroundFetchInterval:(double)arg1;
- (void)setKioskAppBundleIdentifier:(id)arg1;
- (void)kioskAppBundleIdentifierWithCompletion:(id)arg1;
- (void)setSystemAppearance:(long long)arg1;
- (void)systemAppearanceWithReply:(id)arg1;
- (void)sendEventData:(id)arg1;
- (void)sendMenuButtonEvent;
- (void)performScreenActionWithName:(id)arg1 forItemIdentifier:(id)arg2 parameters:(id)arg3 completion:(id)arg4;
- (void)setNextAssistantRecognitionStrings:(id)arg1;
- (void)setNextVoiceRecognitionAudioInputPaths:(id)arg1;
- (void)topActiveOrActivatingApplicationIdentifierWithCompletion:(id)arg1;
- (void)recentApplicationBundleIdentifiersWithCompletion:(id)arg1;
- (void)presentNowPlayingWithOptions:(id)arg1 completion:(id)arg2;
- (void)presentSystemRoutingUIWithOptions:(id)arg1 completion:(id)arg2;
- (void)presentSystemRoutingUI:(id)arg1;
- (void)launchCRDApp;
- (void)deactivateScreenSaver;
- (void)activateScreenSaver;
- (void)setAirPlayActive:(_Bool)arg1;
- (void)sleepTimeoutWithCompletion:(id)arg1;
- (void)setSleepTimeout:(double)arg1;
- (void)reboot;
- (void)relaunch;
- (void)relaunchBackboardd;
- (void)wakeSystemForReason:(id)arg1;
- (void)sleepSystemForReason:(id)arg1;
- (void)deactivateApplication;

@end

