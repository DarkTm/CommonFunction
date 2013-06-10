//
//  ViewController.m
//  CommonFunction
//
//  Created by tom on 13-6-9.
//  Copyright (c) 2013年 tom. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "Common.h"

@interface ViewController ()
{
    UIImageView *_imageView;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"pic_bg.png"];
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, image.size.width, image.size.height)];
    _imageView.image = image;
//    [Common startRotation:_imageView.layer];
    [Common addPopUpAnimation:_imageView.layer];
    [self.view addSubview:_imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
