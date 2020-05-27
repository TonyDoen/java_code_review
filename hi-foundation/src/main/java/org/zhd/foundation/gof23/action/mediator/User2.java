package org.zhd.foundation.gof23.action.mediator;

public class User2 extends User {

    public User2(Mediator mediator) {
        super(mediator);
    }

    @Override
    public void work() {
        System.out.println("user2 exec.");
    }
}
