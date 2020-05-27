package org.zhd.foundation.gof23.action.visitor;

public class MyVisitor implements Visitor
{
    
    @Override
    public void visit(Subject sub)
    {
        System.out.println("visit the subject: " + sub.getSubject());
    }
}
