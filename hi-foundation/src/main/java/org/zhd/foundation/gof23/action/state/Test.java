package org.zhd.foundation.gof23.action.state;

public class Test
{
    public static void main(String[] args)
    {
        State state = new State();
        Context context = new Context(state);
        
        // 设置第一种状态
        state.setValue("state1");
        context.method();
        
        // 设置第二种状态
        state.setValue("state2");
        context.method();
    }
}

// 核心思想：当对象的状态改变时，同时改变行为

// 状态模式
// 有2点：1.可以通过改变状态来获得不同的行为。2.你的好友能同时看到你的变化

// 状态模式在日常开发中用到挺多，尤其做网站，有时希望根据对象的某一属性，区分开他们的功能，如简单的权限控制
