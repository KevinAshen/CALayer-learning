[TOC]

## 前言
- 在学习动画时，发现所有对于View的动画的操作，其实真正变化的都是CALayer
- 之前对于CALayer的理解仅仅是在设置背景图片的是后用过，现在趁此机会好好了解下

## Demo
### GitHub地址
- [CALayer-learning](https://github.com/KevinAshen/CALayer-learning)
### 介绍
- Demo里包含了在创建一个View的时候，各个方法的调用顺序

## UIView与CALayer

![4196_141022100135_1](http://www.cocoachina.com/cms/uploads/allimg/141022/4196_141022100135_1.png)

### UIView
- UIView继承于UIResponder，作为响应对象，响应系统传递过来的事件并进行处理
- View相当于layer的管理者，对它的处理其实大部分都是从layer对象来获取相应的数据
- UIView主要是对显示内容的管理
```objective-c
+ (Class)layerClass;                        
// default is [CALayer class]. Used when creating the underlying layer for the view.
// 在UIView的init方法里面会自动调用该方法确定Layer，同样可以重写该方法写一个自己的Layer 
```
### CALayer
- CALayer则继承于NSObject，不能响应事件
- Layer侧重于图像的显示
- CALayer主要是对显示的绘制

## 隐式动画
- 对一个单独的layer的属性进行改变，就会触发一个从旧的值到新的值的简单动画
- 而对于依附于View的layer，对于layer的改变无法触发动画，而是直接转变，因此对于View上的动画，我们需要使用Core Animation来重新启用
- 这就是为什么动画里面都是根据layer来设置，最后添加animation也是从layer层

## 参考文章

- [iOS UIView和CALayer](https://www.jianshu.com/p/ed40da9303b1)
- [iOS开发之让你的应用“动”起来]([http://www.cocoachina.com/ios/20141022/10005.html](http://www.cocoachina.com/ios/20141022/10005.html))