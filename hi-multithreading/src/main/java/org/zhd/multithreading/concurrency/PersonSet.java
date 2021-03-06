package org.zhd.multithreading.concurrency;

import java.util.HashSet;
import java.util.Set;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;

//import net.jcip.annotations.*;

/**
 * PersonSet
 * <p/>
 * Using confinement to ensure thread safety
 *
 * @author Brian Goetz and Tim Peierls
 */

@ThreadSafe
public class PersonSet
{
    @GuardedBy("this")
    private final Set<Person> mySet = new HashSet<Person>();
    
    public synchronized void addPerson(Person p)
    {
        mySet.add(p);
    }
    
    public synchronized boolean containsPerson(Person p)
    {
        return mySet.contains(p);
    }
    
    interface Person
    {
    }
}
