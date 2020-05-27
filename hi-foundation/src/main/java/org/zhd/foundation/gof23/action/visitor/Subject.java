package org.zhd.foundation.gof23.action.visitor;

public interface Subject {
    public void accept(Visitor visitor);

    public String getSubject();
}
