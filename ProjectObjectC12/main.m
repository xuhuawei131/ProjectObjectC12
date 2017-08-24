//
//  main.m
//  ProjectObjectC12
//  5-2 属性以及构造函数
//  Created by lingdian on 17/8/24.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyRect.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyRect* myRect=[[MyRect alloc]init];
        
        myRect.x=100;
        myRect.y=200;
        myRect.w=300;
        myRect.h=400;
        
        myRect->pointX=100;
        [myRect printRect];
    
        
    }
    return 0;
}
