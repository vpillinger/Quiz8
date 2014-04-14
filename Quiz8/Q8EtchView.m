//
//  Q8EtchView.m
//  Quiz8
//
//  Created by Vincent Pillinger on 4/13/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "Q8EtchView.h"

@implementation Q8EtchView

-(id)init{
    self = [super init];
    if(self){
        [_currentPath moveToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
        _currentPoint = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        _currentPath = [[UIBezierPath alloc]init];
        [_currentPath moveToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
        _currentPoint = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
        //set background
        [self setBackgroundColor:[UIColor lightGrayColor]];
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [_currentPath moveToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
        _currentPoint = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{

    //draw dot
    UIRectFill(CGRectMake(_currentPoint.x, _currentPoint.y, 2, 2));
    //draw path
    [_currentPath addLineToPoint:_currentPoint];
    [_currentPath stroke];
}


@end
