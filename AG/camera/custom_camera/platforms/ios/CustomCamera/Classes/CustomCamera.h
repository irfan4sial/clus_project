//
//  CustomCamera.h
//  CustomCamera
//
//  Created by Imran on 11/09/2014.
//
//

#import <Cordova/CDV.h>
#import "CustomCameraViewController.h"

@interface CustomCamera : CDVPlugin

// Cordova command method
-(void) openCamera:(CDVInvokedUrlCommand*)command;

// Create and override some properties and methods (these will be explained later)
-(void) capturedImageWithPath:(NSString*)imagePath;
@property (strong, nonatomic) CustomCameraViewController* overlay;
@property (strong, nonatomic) CDVInvokedUrlCommand* latestCommand;
@property (readwrite, assign) BOOL hasPendingOperation;

@end
