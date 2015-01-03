//
//  CustomCameraViewController.m
//  CustomCamera
//
//  Created by Imran on 11/09/2014.
//
//

#import "CustomCamera.h"
#import "CustomCameraViewController.h"

@interface CustomCameraViewController ()

@end

@implementation CustomCameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
		// Instantiate the UIImagePickerController instance
		self.picker = [[UIImagePickerController alloc] init];
        
		// Configure the UIImagePickerController instance
		self.picker.sourceType = UIImagePickerControllerSourceTypeCamera;
		self.picker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
		self.picker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
		self.picker.showsCameraControls = NO;
        
		// Make us the delegate for the UIImagePickerController
		self.picker.delegate = self;
        
		// Set the frames to be full screen
		CGRect screenFrame = [[UIScreen mainScreen] bounds];
		self.view.frame = screenFrame;
		self.picker.view.frame = screenFrame;
        
		// Set this VC's view as the overlay view for the UIImagePickerController
		self.picker.cameraOverlayView = self.view;
	}
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction) takePhotoButtonPressed:(id)sender forEvent:(UIEvent*)event {
	// Call the takePicture method on the UIImagePickerController to capture the image.
	[self.picker takePicture];
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
	// Get a reference to the captured image
	UIImage* image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
	// Get a file path to save the JPEG
	NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString* documentsDirectory = [paths objectAtIndex:0];
	NSString* filename = @"test.jpg";
	NSString* imagePath = [documentsDirectory stringByAppendingPathComponent:filename];
    
	// Get the image data (blocking; around 1 second)
	NSData* imageData = UIImageJPEGRepresentation(image, 0.5);
    
	// Write the data to the file
	[imageData writeToFile:imagePath atomically:YES];
    
	// Tell the plugin class that we're finished processing the image
	[self.plugin capturedImageWithPath:imagePath];
}

@end
