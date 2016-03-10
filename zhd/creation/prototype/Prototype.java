package com.zhd.creation.prototype;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class Prototype implements Cloneable, Serializable
{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String str;
    private Object obj;
    private SerializableObjTest sot;
    
    // 浅复制
    public Object clone() throws CloneNotSupportedException
    {
        Prototype pe = (Prototype) super.clone();
        return pe;
    }
    
    public Object deepClone() throws IOException, ClassNotFoundException
    {
        // 写入当前对象的二进制流
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject(this);
        
        // 读出二进制产生的新对象
        ByteArrayInputStream bis = new ByteArrayInputStream(bos.toByteArray());
        ObjectInputStream ois = new ObjectInputStream(bis);
        return ois.readObject();
    }
    
    public String getStr()
    {
        return str;
    }
    
    public void setStr(String str)
    {
        this.str = str;
    }
    
    public Object getObj()
    {
        return obj;
    }
    
    public void setObj(Object obj)
    {
        this.obj = obj;
    }
    
    public SerializableObjTest getSot()
    {
        return sot;
    }
    
    public void setSot(SerializableObjTest sot)
    {
        this.sot = sot;
    }
}

class SerializableObjTest implements Serializable
{
    
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
}
