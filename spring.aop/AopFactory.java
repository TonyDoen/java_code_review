package com.zhd.aop;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import net.sf.cglib.proxy.Enhancer;
import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

public class AopFactory
{
    
}

// dynamic proxy => aop
class ProxyFactory implements InvocationHandler
{
    private Object target;
    
    public Object createUserDao(Object target)
    {
        this.target = target;
        return Proxy.newProxyInstance(this.target.getClass().getClassLoader(), this.target.getClass().getInterfaces(), this);
    }
    
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable
    {
        UserDaoImpl1 userDao = (UserDaoImpl1) target;
        if(null != userDao.getName())
            return method.invoke(target, args);
        else
            System.out.println("the name is null.");
        return null;
    }
}

// Cglib => aop
class CglibFactory implements MethodInterceptor
{
    private Object target;
    
    public Object createUserDao(Object target)
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
        UserDaoImpl2 userDao = (UserDaoImpl2) target;
        if(null != userDao.getName())
            return method.invoke(target, args);
        else
            System.out.println("the name is null.");
        return null;
    }
}