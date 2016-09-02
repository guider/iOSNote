## Delegate  使用详解 

### 使用步骤

* 创建一个 delegate；

* 委托者声明一个delegate；

* 委托者调用delegate内的方法（method）；

* 被委托者设置delegate，以便被委托者调用；

* 被委托者实现Delegate 所定义的方法。



###注意事项

   * @optional 表明这个方法不是必须实现的
   
   * @require 表明这个方法是必须实现的
   
   * @代理可以在.h和.m文件中实现
   