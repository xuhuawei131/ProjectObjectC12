# ProjectObjectC12

@interface MyRect : NSObject
{
    @public
    int pointX;//这里其实相当于一个结构体

}

//@peoperty 修饰的属性 其实是在大括号中 给你悄悄的设置可以个属性 名字是各自加一个下划线

//nonatomic 是非线程安全的 而atomic是线程安全的 默认是非nonatomic 有点事效率高

//缺点就很明显了 不安全 如果是单线程不涉及到线程  所以推荐使用 nonatomic

@property(nonatomic)int x,y;//各自对应的是_x _y _w  _h 由于是私有变量 所以只能内部函数中使用

@property(nonatomic)int w,h;//即使在内部函数中使用 那么也必须要带对象 以及点 所以 就用self.x 了

-(void)printRect;




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
