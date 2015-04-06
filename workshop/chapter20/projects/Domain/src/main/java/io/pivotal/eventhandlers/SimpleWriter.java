package io.pivotal.eventhandlers;

import com.gemstone.gemfire.cache.RegionEvent;
import com.gemstone.gemfire.cache.util.CacheWriterAdapter;

public class SimpleWriter extends CacheWriterAdapter {
    
    public void beforeCreate(RegionEvent event) {
        
    }
}
