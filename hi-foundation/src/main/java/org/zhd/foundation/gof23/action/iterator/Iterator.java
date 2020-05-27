package org.zhd.foundation.gof23.action.iterator;

public interface Iterator {
    public Object previous();

    public Object next();

    public Boolean hasNext();

    public Object first();
}
