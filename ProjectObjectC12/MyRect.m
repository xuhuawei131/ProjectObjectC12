//
//  MyRect.m
//  ProjectObjectC12
//
//  Created by lingdian on 17/8/24.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "MyRect.h"

@implementation MyRect


-(void)printRect{

    printf("x:%d,y:%d,x:%d,y:%d\n",_x,_y,_w,_h);
    
    printf("x:%d,y:%d,x:%d,y:%d\n",self.x,self.y,self.w,self.h);//属性 必须使用 对象＋点 访问的 即使是在内部
}
@end
