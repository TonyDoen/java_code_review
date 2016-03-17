package com.zhd.aop;

class TestAopFactory
{
    public static void main(String[] args) throws InterruptedException
    {
        ProxyFactory pf = new ProxyFactory();
        UserDao ud = (UserDao) pf.createUserDao(new UserDaoImpl1("tony"));
        ud.save();
        
        CglibFactory cf = new CglibFactory();
        UserDaoImpl2 tmp2 = (UserDaoImpl2) cf.createUserDao(new UserDaoImpl2("doen"));
        tmp2.save();
    }
}
