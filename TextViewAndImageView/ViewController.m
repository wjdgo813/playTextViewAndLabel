//
//  ViewController.m
//  TextViewAndImageView
//
//  Created by JHH on 2017. 3. 20..
//  Copyright © 2017년 JHH. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableAttributedString+Color.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = self.imageView.frame;
    frame.origin = CGPointMake(self.textView.frame.size.width - self.imageView.frame.size.width, 10); //이미지 뷰 x,y좌표값 설정
    self.imageView.frame = frame;
    
    UIBezierPath *exclusionPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.textView.frame.size.width - self.imageView.frame.size.width, 0, self.imageView.frame.size.width, self.imageView.frame.size.height)];
    self.textView.textContainer.exclusionPaths  = @[exclusionPath];
    [self.textView addSubview:self.imageView];
    
    [self setColoredLabel];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setColoredLabel
{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"라라라님 300캐쉬 후원!"];
    [string setColorForText:@"라라라" withColor:[UIColor blueColor]];
    [string setColorForText:@"300" withColor:[UIColor redColor]];
    [string setColorForText:@"후원" withColor:[UIColor greenColor]];
    self.myLabel.attributedText = string;
}

@end
