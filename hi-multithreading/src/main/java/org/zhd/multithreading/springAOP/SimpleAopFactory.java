package org.zhd.multithreading.springAOP;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import net.sf.cglib.proxy.Enhancer;
import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

public class SimpleAopFactory
{
    public static void main(String[] args) throws InterruptedException
    {
        UserDao ud = (UserDao) new SimpleProxyFactory().createTarget(new UserDaoImpl1("tony"));
        ud.save();
        
        UserDaoImpl2 tmp2 = (UserDaoImpl2) new SimpleCglibFactory().createTarget(new UserDaoImpl2("doen"));
        tmp2.save();
    }
}

// dynamic proxy => aop
class SimpleProxyFactory implements InvocationHandler
{
    private Object target;
    
    public Object createTarget(Object target)
    {
        this.target = target;
        return Proxy.newProxyInstance(this.target.getClass().getClassLoader(), this.target.getClass().getInterfaces(), this);
    }
    
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable
    {
        return method.invoke(target, args);
    }
}

// Cglib => aop
class SimpleCglibFactory implements MethodInterceptor
{
    private Object target;
    
    public Object createTarget(Object target)
    {
        this.target = target;
        Enhancer enhancer = new Enhancer();
        enhancer.setSuperclass(target.getClass());
        enhancer.setCallback(this);
        return enhancer.create();
    }
    
    @Override
    public Object intercept(Object proxy, Method method, Object[] args, MethodProxy methodProxy) throws Throwable
    {
        return method.invoke(target, args);
    }
}