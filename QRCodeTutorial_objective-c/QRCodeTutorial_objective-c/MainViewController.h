//
//  ViewController.h
//  QRCodeTutorial_objective-c
//
//  Created by Jasper Park on 2021/01/01.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIButton *QRCodeBtn;


@end

