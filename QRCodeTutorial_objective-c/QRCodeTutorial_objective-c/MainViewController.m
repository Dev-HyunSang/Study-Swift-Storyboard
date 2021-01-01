//
//  ViewController.m
//  QRCodeTutorial_objective-c
//
//  Created by Jasper Park on 2021/01/01.
//

#import "MainViewController.h"
#import <QRCodeReaderViewController/QRCodeReaderViewController.h>
#import <QRCodeReader.h>

@interface MainViewController () <QRCodeReaderDelegate> {
    QRCodeReaderViewController *QRCodeVC;
}
@end

@implementation MainViewController

// View Load / First Loading
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create the reader object
    QRCodeReader *reader = [QRCodeReader readerWithMetadataObjectTypes:@[AVMetadataObjectTypeQRCode]];

    // Instantiate the view controller
    QRCodeVC = [QRCodeReaderViewController readerWithCancelButtonTitle:@"Cancel" codeReader:reader startScanningAtLoad:YES showSwitchCameraButton:YES showTorchButton:YES];

    // Set the presentation style
    QRCodeVC.modalPresentationStyle = UIModalPresentationFormSheet;

    // Define the delegate receiver
    QRCodeVC.delegate = self;

    // Or use blocks
    [reader setCompletionWithBlock:^(NSString *resultAsString) {
      NSLog(@"%@", resultAsString);
    }];
    
    NSURL *websiteUrl = [NSURL URLWithString:@"http://www.naver.com"];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL: websiteUrl];
    
    [_webView loadRequest: urlRequest];
    
    [_QRCodeBtn layer].borderColor = UIColor.blueColor.CGColor;
    [_QRCodeBtn layer].borderWidth = 3;
    [_QRCodeBtn layer].cornerRadius = 10;
    [_QRCodeBtn layer].backgroundColor = [UIColor yellowColor].CGColor;
    
    // QRCodeBtn Click After QRCodeReaderLauch Call
    [_QRCodeBtn addTarget:self action:@selector(QRCodeReaderLaunch) forControlEvents:UIControlEventTouchUpInside];
        
    
}

- (void)QRCodeReaderLaunch {
    NSLog(@"MainViewController - QRCodeReaderLaunch() called");
}


#pragma mark - QRCodeReader Delegate Methods

- (void)reader:(QRCodeReaderViewController *)reader didScanResult:(NSString *)result
{
  [self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"%@", result);
  }];
}

- (void)readerDidCancel:(QRCodeReaderViewController *)reader
{
  [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
