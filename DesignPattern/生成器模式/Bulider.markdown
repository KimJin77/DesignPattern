# 生成器模式

## 定义

将一个复杂对象的构建与表现分离，使同样的构建过程可以创建不同的表现

## 使用情景

* 需要创建涉及各种部件的复杂对象
* 构建过程要以不同的方式构建对象

** 与抽象工厂的对比 **

| 生成器 | 抽象工厂 |
|:------:|:-------:|
| 构建复杂对象 | 构建简单或复杂对象 |
| 以多个步骤构建对象 | 以单一步骤构建对象 |
| 以多种方式构建对象 | 以单一方式构建对象 |
| 在构建过程的最后一步返回对象 | 立刻返回对象 |
| 专注一个特定的产品 | 强调一套产品 |
