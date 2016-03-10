package com.zhd.action.observer;

public class TestMySubject
{
    
    public static void main(String[] args)
    {
        Subject st = new MySubject();
        st.add(new Observer1());
        st.add(new Observer2());
        st.operation();
    }
}

// 观察者模式
// 讲类与类之间的关系，不涉及到继承，
// 当一个对象变化后，其他依赖该对象的对象都会受到通知，并随着变化
