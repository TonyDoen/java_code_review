package com.zhd.action.memento;

public class Test
{
    public static void main(String[] args)
    {
        // 创建原始类
        Original orig = new Original("egg");
        
        // 创建备忘类
        Storage storage = new Storage(orig.createMemento());
        
        // 修改原始类的状态
        System.out.println("初始化状态是：" + orig.getValue());
        orig.setValue("apple");
        System.out.println("修改后的状态是：" + orig.getValue());
        
        // 恢复原始类
        orig.restoreMemento(storage.getMemento());
        System.out.println("恢复后的状态是：" + orig.getValue());
    }
}

// 备忘录模式
// Original 类是原始类，需要保存的属性value； Memento类是备忘录类，Storage类是存储备忘录的类

// 新建原始类，value被初始化为egg, 修改后值是apple,
// 备份-恢复