//
//  HHBannerView.h
//  BannerView
//
//  Created by 张家欢 on 16/8/8.
//  Copyright © 2016年 zhangjiahuan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, NinaBannerSource) {
    NinaBannerStyleOnlyLocalSource = 0,         // 图片源来自本地
    NinaBannerStyleOnlyWebSource = 1,           // 图片原来自网络
};

@class HHBannerView;
@protocol HHBannerViewDelegate <NSObject>

@optional

/** 
 点击图片回调
 */
- (void)hhBannerView:(HHBannerView *)bannerView didSelectItemAtIndex:(NSInteger)index;

@end

@interface HHBannerView : UIView

/**
 滑动间隔
 */
@property (nonatomic, assign) CGFloat timeInterval;
/**
 是否要显示pagecontrol
 */
@property (nonatomic, assign) BOOL showPageControl;
/**
 当前页点的颜色
 */
@property (nonatomic, strong) UIColor *currentPageIndicatorTintColor;
/**
未选中点的颜色
 */
@property (nonatomic, strong) UIColor *pageIndicatorTintColor;
/**
 设置代理
 */
@property (nonatomic, weak) id<HHBannerViewDelegate> delegate;

/**
 * 初始化3D轮播图
 *
 * @param frame            轮播图尺寸.
 * @param WithBannerSource 选择加载本地还是网络图片.
 * @param WithBannerArray  本地图片名字数组（ 网络图片URL地址 ）
 *
 */
- (instancetype)initWithFrame:(CGRect)frame WithBannerSource:(NinaBannerSource)bannerSource WithBannerArray:(NSArray *)bannerArray;

@end
