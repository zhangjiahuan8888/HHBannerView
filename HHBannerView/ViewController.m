//
//  ViewController.m
//  HHBannerView
//
//  Created by 张家欢 on 16/8/9.
//  Copyright © 2016年 zhangjiahuan. All rights reserved.
//

#import "ViewController.h"
#import "HHBannerView.h"
@interface ViewController ()<HHBannerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    NSArray *imgNames = @[@"1",@"2",@"3",@"4",@"5"];
    
    NSArray *imgNames = @[@"http://desk.fd.zol-img.com.cn/t_s208x130c5/g5/M00/0B/05/ChMkJlcgdH2IVmv2AAYP2zcB7GQAAQr3gJjQtUABg_z016.jpg",
                          @"http://desk.fd.zol-img.com.cn/t_s208x130c5/g5/M00/0A/05/ChMkJ1cfEcmIZ2VvAAZMqeez-6YAAQn7wAeXgoABkzB552.jpg",
                          @"http://desk.fd.zol-img.com.cn/t_s208x130c5/g5/M00/00/01/ChMkJlZKi8eIRSR6ABB3m9XoGWcAAE_tgNqq6oAEHez310.jpg",
                          @"http://desk.fd.zol-img.com.cn/t_s208x130c5/g5/M00/01/00/ChMkJ1XNTGqISyLMAAJSFa0tK8sAAAEJACsrcwAAlIt345.jpg"];
    
    HHBannerView *bannerView = [[HHBannerView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 150) WithBannerSource:NinaBannerStyleOnlyWebSource WithBannerArray:imgNames];
    bannerView.timeInterval = 3;
    bannerView.showPageControl = YES;
    bannerView.delegate = self;
    [self.view addSubview:bannerView];

}

#pragma mark - HHBannerViewDelegate
- (void)hhBannerView:(HHBannerView *)bannerView didSelectItemAtIndex:(NSInteger)index{
    NSLog(@"点击的图片下标___%ld",(long)index);
    NSLog(@"  %ld",(long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
