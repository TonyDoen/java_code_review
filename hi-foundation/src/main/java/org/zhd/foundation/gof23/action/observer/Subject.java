package org.zhd.foundation.gof23.action.observer;

public interface Subject
{
    public void add(Observer ob);
    
    public void del(Observer ob);
    
    public void notifyObservers();
    
    public void operation();
    
}
