//
//  ViewController.h
//  AudioControlLight
//
//  Created by yin yi on 2013/01/27.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <StoreKit/StoreKit.h>
#import "MobiSageSDK.h"
#import <CoreLocation/CLLocationManagerDelegate.h>
#import "RNExpandingButtonBar.h"

@interface ViewController : UIViewController<AVAudioSessionDelegate,AVAudioRecorderDelegate,MobiSageRecommendDelegate,MobiSageAdViewDelegate,CLLocationManagerDelegate,RNExpandingButtonBarDelegate>{
    
}

@property(nonatomic,strong)NSURL *soundFileURL;
@property(nonatomic,strong)AVAudioRecorder *soundRecorder;
@property(nonatomic,strong)IBOutlet UIButton *myBtn;
@property(nonatomic,strong) UIButton *mySetBt;
@property(nonatomic,strong) UIButton *mySOSbt;
@property(nonatomic,strong) UIButton *myCommitBt;
@property(nonatomic,strong)IBOutlet UIImageView *myBg;
//指南针部分
@property(nonatomic,strong) UIImageView *compassView;
@property(nonatomic, strong)CLLocationManager *locationManager;
@property(nonatomic, strong)NSTimer *timerShine;

@property (nonatomic, strong) RNExpandingButtonBar *bar;
@property (nonatomic, strong)MobiSageAdBanner *myAdBar;

- (void)levelTimerCallback:(NSTimer *)timer;
-(void)openTorch:(BOOL)_close;
-(void)recordStart;
-(void)recordStop;
-(IBAction)btnDown:(id)sender;
-(void)addRecommend;

@end
