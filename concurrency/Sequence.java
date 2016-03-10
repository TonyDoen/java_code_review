package net.jcip.examples;

import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;

//import net.jcip.annotations.*;

/**
 * Sequence
 *
 * @author Brian Goetz and Tim Peierls
 */

@ThreadSafe
public class Sequence
{
    @GuardedBy("this")
    private int nextValue;
    
    public synchronized int getNext()
    {
        return nextValue++;
    }
}
