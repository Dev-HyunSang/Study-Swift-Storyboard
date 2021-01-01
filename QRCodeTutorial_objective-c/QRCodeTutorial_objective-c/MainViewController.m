//
//  ViewController.m
//  QRCodeTutorial_objective-c
//
//  Created by Jasper Park on 2021/01/01.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

// View Load / First Loading
- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *websiteUrl = [NSURL URLWithString:@"http://www.naver.com"];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL: websiteUrl];
    
    [_webView loadRequest: urlRequest];
}


@end
