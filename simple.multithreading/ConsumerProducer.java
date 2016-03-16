package com.zhd.multithreading;

public class ConsumerProducer
{
    public static void main(String[] args)
    {
        Godown godown = new Godown(30);
        for(int i = 1; i < 5; i++) //生产者
            new Consumer("consumer-" + i, i * 10, godown).start();
        
        for(int i = 1; i < 5; i++) //消费者
            new Producer("producer-" + i, i * 10, godown).start();
    }
}

class Consumer extends Thread
{
    private int neednum;
    private Godown godown;
    
    Consumer(String name, int neednum, Godown godown)
    {
        super(name);
        this.neednum = neednum;
        this.godown = godown;
    }
    
    public void run()
    {
        godown.consume(neednum);
    }
}

class Producer extends Thread
{
    private int neednum;
    private Godown godown;
    
    Producer(String name, int neednum, Godown godown)
    {
        super(name);
        this.neednum = neednum;
        this.godown = godown;
    }
    
    public void run()
    {
        godown.produce(neednum);
    }
}

class Godown
{
    public static final int max_size = 100;
    public int curnum;
    
    Godown()
    {
    }
    
    Godown(int curnum)
    {
        this.curnum = curnum;
    }
    
    public synchronized void produce(int neednum)
    {
        while(neednum + curnum > max_size)
        {
            System.out.println(Thread.currentThread().getName() + " produce " + neednum + ", over garbage " + (max_size - curnum) + ", cannot do it.");
            try
            {
                this.wait();// sleep方法没有释放锁，wait方法释放了锁
            }
            catch(InterruptedException e)
            {
                e.printStackTrace();
            }
        }
        
        curnum += neednum;
        System.out.println(Thread.currentThread().getName() + " produced " + neednum + " productions, now is  " + curnum);
        this.notifyAll();
    }
    
    public synchronized void consume(int neednum)
    {
        while(curnum < neednum)
        {
            System.out.println(Thread.currentThread().getName() + " want " + neednum + ", over garbage " + (neednum - curnum) + ", cannot do it.");
            try
            {
                this.wait();
            }
            catch(InterruptedException e)
            {
                e.printStackTrace();
            }
        }
        
        curnum -= neednum;
        System.out.println(Thread.currentThread().getName() + " has consumed " + neednum + " productions, now is " + curnum);
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
