# ProjectObjectC12
5-2属性与构造函数


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





属性 可以不使用指针 而使用属性@propety

在头文件中，不使用大括号了

@propety(nonatomic)int x:

@propety(nonatomic)int y:

@propety(nonatomic)int w,h:

nonatomic是控制这个变量的线程是否安全， nonatomic是非线程安全，而 atomic是线程安全

这样以后访问成员变量的时候不用指针，可以用点.去访问

他的内部其实是相当于定义了一个结构体， 就是那个大括号，所以他里面的变量用指针的剪头访问。

而propety定义的属性可以用.访问，其实是因为在大括号结构体中生成一个_x   _y _w _h  也就是变量都加了一个下划线的变量，但是给隐藏起来了。

由于不是公开的权限，所以只能内部函数使用

任何时候属性只能由对象进行点操作，即使在内部也不能直接使用x,y,w,h，可以使用self.x  self.y等等，也可以使用_x _y
