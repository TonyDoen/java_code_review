package org.zhd.foundation.gof23.action.observer;

public class MySubject extends AbstractSubject {
    @Override
    public void operation() {
        System.out.println("update self.");
        notifyObservers();
    }
}
