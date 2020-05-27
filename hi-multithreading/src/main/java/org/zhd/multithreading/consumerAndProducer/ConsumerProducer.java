package org.zhd.multithreading.consumerAndProducer;

public class ConsumerProducer {
    public static void main(String[] args) {
        Granary granary = new Granary(30);
        for (int i = 1; i < 5; i++) //生产者
            new Consumer("consumer-" + i, i * 10, granary).start();

        for (int i = 1; i < 5; i++) //消费者
            new Producer("producer-" + i, i * 10, granary).start();
    }
}

class Consumer extends Thread {
    private int needNum;
    private Granary granary;

    Consumer(String name, int needNum, Granary granary) {
        super(name);
        this.needNum = needNum;
        this.granary = granary;
    }

    public void run() {
        granary.consume(needNum);
    }
}

class Producer extends Thread {
    private int needNum;
    private Granary granary;

    Producer(String name, int needNum, Granary granary) {
        super(name);
        this.needNum = needNum;
        this.granary = granary;
    }

    public void run() {
        granary.produce(needNum);
    }
}

class Granary {
    public static final int MAX_SIZE = 100;
    public int curNum;

    Granary() {
    }

    Granary(int curNum) {
        this.curNum = curNum;
    }

    public synchronized void produce(int neednum) {
        while (neednum + curNum > MAX_SIZE) {
            System.out.println(Thread.currentThread().getName() + " produce " + neednum + ", over garbage " + (MAX_SIZE - curNum) + ", cannot do it.");
            try {
                this.wait();// sleep方法没有释放锁，wait方法释放了锁
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        curNum += neednum;
        System.out.println(Thread.currentThread().getName() + " produced " + neednum + " productions, now is  " + curNum);
        this.notifyAll();
    }

    public synchronized void consume(int neednum) {
        while (curNum < neednum) {
            System.out.println(Thread.currentThread().getName() + " want " + neednum + ", over garbage " + (neednum - curNum) + ", cannot do it.");
            try {
                this.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        curNum -= neednum;
        System.out.println(Thread.currentThread().getName() + " has consumed " + neednum + " productions, now is " + curNum);
        this.notifyAll();
    }
}

// java.lang.Thread 类，提供sleep()
// java.lang.Object 类，提供wait(), notify(), notifyAll() 方法操作线程
// sleep 将一个线程睡眠，参数指定时间
// wait 将一个线程挂起，直到超时，或，线程被唤醒

// sleep vs. wait
// 1.java.lang.Thread.sleep() vs. java.lang.Object.wait()
// 2.sleep 方法没有释放锁，wait 方法释放锁
// 3.wait, notify, notifyAll 只能在同步控制块里使用，sleep 可以使用中任何地方
// synchronized(XXX) {
// XXX.notify();
// XXX.wait();
// }
// 4.sleep 必须捕获异常，wait, notify, notifyAll 不需要捕获异常
