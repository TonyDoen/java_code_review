package org.zhd.foundation.gof23.action.observer;

import java.util.Enumeration;
import java.util.Vector;

public abstract class AbstractSubject implements Subject {
    private Vector<Observer> obs = new Vector<Observer>();

    public void add(Observer ob) {
        obs.add(ob);
    }

    public void del(Observer ob) {
        obs.remove(ob);
    }

    public void notifyObservers() {
        Enumeration<Observer> enumob = obs.elements();
        while (enumob.hasMoreElements()) {
            enumob.nextElement().update();
        }
    }
}
