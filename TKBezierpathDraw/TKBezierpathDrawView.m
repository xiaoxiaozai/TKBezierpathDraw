//
//  TKBezierpathDrawView.m
//  TKBezierpathDraw
//
//  Created by 翟宇 on 16/2/17.
//  Copyright © 2016年 翟宇. All rights reserved.
//

#import "TKBezierpathDrawView.h"

@implementation TKBezierpathDrawView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath* bezierPath=[UIBezierPath bezierPath];
    //    frame代表的是视图在父视图中占据了父视图多大的区域
    //    bounds代表视图本身的大小
    [bezierPath addArcWithCenter:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2) radius:self.bounds.size.height/2-10 startAngle:M_PI_2*3 endAngle:self.progress*M_PI*2+M_PI_2*3 clockwise:YES];

    if (!self.colorTemp) {
        [[UIColor blueColor]setStroke];
    }else{
        [self.colorTemp setStroke];
    }
    [bezierPath stroke];
    [bezierPath moveToPoint:CGPointMake(140, 40)];
    [bezierPath addCurveToPoint:CGPointMake(40, 140) controlPoint1:CGPointMake(40, 40) controlPoint2:CGPointMake(140, 140)];
    [bezierPath addCurveToPoint:CGPointMake(140, 240) controlPoint1:CGPointMake(140, 140) controlPoint2:CGPointMake(40, 240)];
    UIBezierPath* be=[UIBezierPath bezierPathWithRoundedRect:CGRectMake(40, 40, 100, 100) cornerRadius:10];
    //    UIBezierPath*be=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(40, 40, 100, 100)];
    [[UIColor blueColor]setStroke];
    [be   stroke];
    [[UIColor blueColor]setStroke];
    [bezierPath stroke];
    NSString* tempString=@"tekiutekiutekiutekiutekiutekiutekiutekiutekiutekiutekiutekiutekiu";
    NSDictionary* dictionary=@{NSFontAttributeName:[UIFont systemFontOfSize:10],NSForegroundColorAttributeName:[UIColor greenColor]};
    [tempString drawAtPoint:CGPointMake(40, 40) withAttributes:dictionary];
    [tempString drawInRect:CGRectMake(40, 200, 200, 500) withAttributes:dictionary];
    //根据设定的最大宽度和高度,计算出字符串为了完成显示需要占据的实际宽度和高度
    CGRect rect1=[tempString boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingTruncatesLastVisibleLine attributes:dictionary context:nil];
    [tempString boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingTruncatesLastVisibleLine attributes:dictionary context:nil];
    UIImage* image=[UIImage imageNamed:@"icon80"];
    //    [image drawAtPoint:CGPointMake(50, 50)];
    //    UIBezierPath* be=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 100, 100)];
    //以外区域设置为绘图无效
    [be addClip];
    [image drawInRect:CGRectMake(50, 50, 100, 100)];


//    // Drawing code
//    NSDictionary* dictionary=@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:12]};
//    CGRect rectDraw=[self.message boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:dictionary context:nil];
//
//
//    CGRect rectDraw1=CGRectMake(320-30-rectDraw.size.width, 20, rectDraw.size.width, rectDraw.size.height);
//
//
//    UIBezierPath* draw=[UIBezierPath bezierPath];
//    [draw addArcWithCenter:CGPointMake(290, 20) radius:10 startAngle:M_PI_2*3 endAngle:M_PI_2*4 clockwise:YES];
//    [draw addLineToPoint:CGPointMake(300, 20+rectDraw.size.height)];
//    [draw addLineToPoint:CGPointMake(310, 30+rectDraw.size.height)];
//
//    [draw addLineToPoint:CGPointMake(300-10-rectDraw.size.width, 30+rectDraw.size.height)];
//
//    [draw addArcWithCenter:CGPointMake(300-10-rectDraw.size.width, 20+rectDraw.size.height) radius:10 startAngle:M_PI_2 endAngle:M_PI_2*2 clockwise:YES];
//    [draw addLineToPoint:CGPointMake(300-20-rectDraw.size.width, 20)];
//    [draw addArcWithCenter:CGPointMake(300-10-rectDraw.size.width, 20) radius:10 startAngle:M_PI_2*2 endAngle:M_PI_2*3 clockwise:YES];
//    [draw addLineToPoint:CGPointMake(290, 10)];
//    [[UIColor blackColor]setFill];
//    [draw fill];
//    [self.message drawInRect:rectDraw1 withAttributes:dictionary];
}

@end
