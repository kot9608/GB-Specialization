//
//  SceneDelegate.m
//  obj-c HW5
//
//  Created by Elena on 09.04.2024.
//


#import "SceneDelegate.h"
#import "GetRequestViewController.h"
#import "Loader.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.windowScene = (UIWindowScene *) scene;
    Loader *loader = [Loader new];
    GetRequestViewController *getRequestViewController = [[GetRequestViewController alloc] initWithLoader:loader];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:getRequestViewController];
    [self.window makeKeyAndVisible];
}

@end
