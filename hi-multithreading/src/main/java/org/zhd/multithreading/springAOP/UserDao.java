package org.zhd.multithreading.springAOP;

interface UserDao
{
    void save();
}

class UserDaoImpl1 implements UserDao // dynamic proxy => aop
{
    private String name;
    
    public UserDaoImpl1()
    {
    }
    
    public UserDaoImpl1(String name)
    {
        this.name = name;
    }
    
    public String getName()
    {
        return name;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    @Override
    public void save()
    {
        System.out.println("save() is called for " + name);
    }
}

class UserDaoImpl2 // Cglib => aop
{
    private String name;
    
    public UserDaoImpl2()
    {
    }
    
    public UserDaoImpl2(String name)
    {
        this.name = name;
    }
    
    public String getName()
    {
        return name;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public void save() throws InterruptedException
    {
        Thread.sleep(1000L);
        System.out.println("save() is called for " + name);
    }
    
    public void raiseException()
    {
        throw new RuntimeException("this is a test.");
    }
}
