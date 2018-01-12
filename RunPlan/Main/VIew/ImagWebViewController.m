//
//  ImagWebViewController.m
//  144CAI
//
//  Created by JFChen on 2017/12/3.
//  Copyright © 2017年 JFChen. All rights reserved.
//

/*
 
 <!DOCTYPE html>
 <html lang="en">
 <head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
 <meta name="apple-mobile-web-app-capable" content="yes" />
 <meta name="apple-mobile-web-app-status-bar-style" content="black" />
 <meta name="format-detection" content="telephone=no" />
 <meta name="msapplication-tap-highlight" content="no">
 <meta http-equiv="cleartype" content="on">
 <meta name="Keywords" content="慢频彩投注攻略"/>
 <meta name="Description" content="大奖是这样练成的">
 <title>慢频彩投注攻略</title>
 <!--<link href="http://h5.9188.com/style/style.css" rel="stylesheet" type="text/css">-->
 <link rel="stylesheet" href="css/style.css">
 </head>
 <body>
 <div id="imgBox">
 <img src="" id="wanfaImg">
 </div>
 </body>
 </html>
 */

#import "ImagWebViewController.h"
#import "Masonry.h"

@interface ImagWebViewController ()<UIWebViewDelegate>

@end

@implementation ImagWebViewController{
    UIWebView *contentWebView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    contentWebView = [[UIWebView alloc] init];
    contentWebView.delegate = self;
    contentWebView.scrollView.bounces = NO;
    [self.view addSubview:contentWebView];
    [contentWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.top.equalTo(self.view.mas_top);
        make.bottom.equalTo(self.view.mas_bottom);
    }];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self addImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addImage
{
    //编码图片
    NSString *stringImage = [self htmlForJPGImage:_image];
    
    //构造内容
    NSString *contentImg = [NSString stringWithFormat:@"%@", stringImage];
    //原理就是用一个for循环，拿到所有的图片，对每个图片都处理一次，让图片的宽为100%，就是按照屏幕宽度自适应；让图片的高atuo，自动适应。文字的字体大小，可以去改font-size:15px，这里我用的是15px。根据自己的具体需求去改吧。
    NSString *htmls = [NSString stringWithFormat:@"<html> \n"
                       "<head> \n"
                       "<style type=\"text/css\"> \n"
                       "body {font-size:15px;}\n"
                       "</style> \n"
                       "</head> \n"
                       "<body>"
                       "<script type='text/javascript'>"
                       "window.onload = function(){\n"
                       "var $img = document.getElementsByTagName('img');\n"
                       "for(var p in  $img){\n"
                       " $img[p].style.width = '100%%';\n"
                       "$img[p].style.height ='auto'\n"
                       "}\n"
                       "}"
                       "</script>%@"
                       "</body>"
                       "</html>",contentImg];
    //让self.contentWebView加载content
    [contentWebView loadHTMLString:htmls baseURL:nil];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    //状态栏不显示网络状态，因为当前内容不是由网络下载的
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

//编码图片
- (NSString *)htmlForJPGImage:(UIImage *)image
{
    NSData *imageData = UIImageJPEGRepresentation(image,1.0);
    NSString *imageSource = [NSString stringWithFormat:@"data:image/jpg;base64,%@",[imageData base64Encoding]];
    return [NSString stringWithFormat:@"<img src = \"%@\" />", imageSource];
}

@end
