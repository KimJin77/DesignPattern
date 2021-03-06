# 原型模式

## 定义

使用原型实例指定创建对象的种类，并通过复制这个原型创建新的对象。

## 使用情景

* 需要创建的对象应独立于其类型与创建方式
* 要实例化的类是在运行时决定的
* 不想要与产品层次相对应的工厂层次
* 不同类的实例的差异仅是状态的若干组合
* 类不容易创建

## 深复制与浅复制

深复制：不仅复制指针值，还复制指针指向的资源
浅复制：仅复制了指针值

`NSObject`的派生类需要实现`NSCopying`协议及其方法来实现深复制。`NSObject`有一个实例方法`copy`， 默认的`copy`实现调用的是`copyWithZone:`
