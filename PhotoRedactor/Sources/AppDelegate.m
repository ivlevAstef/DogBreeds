//
//  AppDelegate.m
//  PhotoRedactor
//
//  Created by Alexander Ivlev on 14/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "AppDelegate.h"
#import "Photos/Photos.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  [PHPhotoLibrary requestAuthorization: ^(PHAuthorizationStatus status) {
    
  }];
  // Override point for customization after application launch.
  return YES;
}

@end
