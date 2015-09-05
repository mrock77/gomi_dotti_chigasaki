//
//  PdfViewController.m
//  ChigasakiGomi
//
//  Created by 岩崎正則 on 2015/09/05.
//  Copyright (c) 2015年 vida-comoda. All rights reserved.
//

#import "PdfViewController.h"

@interface PdfViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *PdfView;

@end


@implementation PdfViewController

- (void)loadWeb {
    NSString* strUrl = @"http://www.city.chigasaki.kanagawa.jp/kankyo/gomi/1003246/index.html";
    NSURLRequest* myRequest = [NSURLRequest requestWithURL: [NSURL URLWithString:strUrl]];
    [_PdfView loadRequest:myRequest];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadWeb];
    self.canDisplayBannerAds = YES; // auto add iAd banner
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
