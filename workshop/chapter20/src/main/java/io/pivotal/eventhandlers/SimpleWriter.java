package io.pivotal.eventhandlers;

import com.gemstone.gemfire.cache.EntryEvent;
import com.gemstone.gemfire.cache.util.CacheWriterAdapter;

public class SimpleWriter extends CacheWriterAdapter<String, String> {

	/*
	 * Persist to external system, i.e. Hibernate, disk, Hadoop, message bus, etc
	 */
	public void beforeCreate(EntryEvent<String, String> event) {
		String key = event.getKey();
		 System.out.println("Externally persisting the value of " + key);
	 }

}
