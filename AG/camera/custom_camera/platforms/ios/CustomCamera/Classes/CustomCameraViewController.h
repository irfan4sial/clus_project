//
//  CustomCameraViewController.h
//  CustomCamera
//
//  Created by Imran on 11/09/2014.
//
//

#import <UIKit/UIKit.h>
@class CustomCamera;

@interface CustomCameraViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
// Action method
-(IBAction) takePhotoButtonPressed:(id)sender forEvent:(UIEvent*)event;

// Declare some properties (to be explained soon)
@property (strong, nonatomic) CustomCamera* plugin;
@property (strong, nonatomic) UIImagePickerController* picker;

@end
