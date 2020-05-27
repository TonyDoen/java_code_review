package org.zhd.foundation.gof23.action.visitor;

public class Test
{
    
    public static void main(String[] args)
    {
        Visitor visitor = new MyVisitor();
        Subject sub = new MySubject();
        sub.accept(visitor);
    }
}

// 访问者模式
// 把数据结构和作用于结构上的操作解耦和，使操作集合可相对自由的演化
// 访问者模式适用于数据结构相对稳定，算法又易于变化的系统

// 访问者模式的优点是增加操作很容易，因为增加操作意味着增加新的访问者
// 访问者模式将有关行为集中到一个访问者对象中，其改变不影响系统数据结构
// 其缺点是增加新的数据结构困难

// 该模式使用场景
// 如果我们想为一个现有的类增加新的功能，
// 1.新功能会不会与现有功能出现兼容性问题
// 2.以后会不会再需要添加
// 3.如果类不允许修改代码
// 这些问题的最佳解决方案，便是使用访问者模式
// 适用有数据结构相对稳定的系统，把数据结构和算法解耦