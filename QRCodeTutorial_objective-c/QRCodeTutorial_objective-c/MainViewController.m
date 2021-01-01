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
    [self presentViewController: QRCodeVC animated:YES completion:NULL];
}


#pragma mark - QRCodeReader Delegate Methods

// QRCode Recognition Successful
- (void)reader:(QRCodeReaderViewController *)reader didScanResult:(NSString *)result
{
    NSLog(@"QR코드 인식 성공!");
    NSURL *websiteUrl = [NSURL URLWithString: result];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL: websiteUrl];
    
    [_webView loadRequest: urlRequest];
    
  [self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"RQ코드 결과: %@", result);
  }];
}

// QRCode recognition Failed and Cancel
- (void)readerDidCancel:(QRCodeReaderViewController *)reader
{
    NSLog(@"QR코드 인식 취소");
  [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
