package org.zhd.multithreading.concurrency;

import org.apache.http.annotation.ThreadSafe;

//import net.jcip.annotations.*;

/**
 * ResourceFactory
 * <p/>
 * Lazy initialization holder class idiom
 *
 * @author Brian Goetz and Tim Peierls
 */
@ThreadSafe
public class ResourceFactory
{
    private static class ResourceHolder
    {
        public static Resource resource = new Resource();
    }
    
    public static Resource getResource()
    {
        return ResourceFactory.ResourceHolder.resource;
    }
    
    static class Resource
    {
    }
}
