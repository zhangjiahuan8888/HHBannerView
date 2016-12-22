###朋友的鼓励是我继续分享的动力，动动小手点击右上角的✨Star✨，让我知道你来过。。。




##示例图片
![gif](https://github.com/zhangjiahuan8888/HHBannerView/blob/master/HHBannerView/banner.gif)

##使用方法
### 初始化
- (instancetype)initWithFrame:(CGRect)frame WithBannerSource:(NinaBannerSource)bannerSource WithBannerArray:(NSArray *)bannerArray;

### 设置属性

#####自动轮播间隔时间
@property (nonatomic, assign) CGFloat timeInterval;

#####是否要显示pagecontrol
@property (nonatomic, assign) BOOL showPageControl;

#####当前页点的颜色
@property (nonatomic, strong) UIColor *currentPageIndicatorTintColor;

#####未选中点的颜色
@property (nonatomic, strong) UIColor *pageIndicatorTintColor;

 
#####点击图片回调
- (void)hhBannerView:(HHBannerView *)bannerView didSelectItemAtIndex:(NSInteger)index;
