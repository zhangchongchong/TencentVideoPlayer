//
//  ViewController.m
//  腾信播放器
//
//  Created by 张冲 on 2018/10/30.
//  Copyright © 2018 张冲. All rights reserved.
//

#import "ViewController.h"
#import <SuperPlayer.h>
#import <SuperPlayerView.h>
@interface ViewController ()<SuperPlayerDelegate>
@property (nonatomic, strong)SuperPlayerView *player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  __block  BOOL isStart = NO;

    NSTimer *timer1111 = [NSTimer scheduledTimerWithTimeInterval:5.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"时间到了");
    }];

    NSTimer *timer1 = [NSTimer scheduledTimerWithTimeInterval:2.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"时间1111111到了");
        isStart = !isStart;
        if (isStart) {
            [timer1111 setFireDate:[NSDate distantFuture]];
        }else{
            [timer1111 setFireDate:[NSDate date]];
        }
    }];


//    _player = [[SuperPlayerView alloc]init];
//    _player.delegate = self;
//    _player.fatherView = self.view;
//
//    SuperPlayerUrl *url = [SuperPlayerUrl new];
//    url.url = @"http://5815.liveplay.myqcloud.com/live/5815_62fe94d692ab11e791eae435c87f075e.flv";
//    url.title = @"超清";
//
//    SuperPlayerUrl *url1 = [SuperPlayerUrl new];
//    url1.url = @"http://5815.liveplay.myqcloud.com/live/5815_62fe94d692ab11e791eae435c87f075e_900.flv";
//    url1.title = @"高清";
//
//    SuperPlayerUrl *url2 = [SuperPlayerUrl new];
//    url2.url = @"http://5815.liveplay.myqcloud.com/live/5815_62fe94d692ab11e791eae435c87f075e_550.flv";
//    url2.title = @"标清";
//
//
//    SuperPlayerModel *playerModel = [[SuperPlayerModel alloc]init];
////    playerModel.videoURL = @"http://200024424.vod.myqcloud.com/200024424_709ae516bdf811e6ad39991f76a4df69.f20.mp4";
//    playerModel.multiVideoURLs = @[url,url1,url2];
//
//    [_player playWithModel:playerModel];

    // Do any additional setup after loading the view, typically from a nib.
}


@end
