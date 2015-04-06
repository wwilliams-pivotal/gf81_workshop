package io.pivotal.eventhandlers;

import java.util.Properties;

import com.gemstone.gemfire.cache.CacheLoader;
import com.gemstone.gemfire.cache.Declarable;
import com.gemstone.gemfire.cache.LoaderHelper;

public class SimpleLoader implements CacheLoader<String, String>, Declarable {

	 /*
	  * CALL HIBERNATE, HADOOP,ETC., TO LAZY LOAD ON CACHE MISS
	  */
	public String load(LoaderHelper<String, String> helper) {
		 String key = (String) helper.getKey();
		 System.out.println(" Loader called to retrieve value for " + key);

		 // GemFire will put the return value into the region for the key
		 return "LoadedValue" + (Integer.parseInt(key.substring(3)));
	}
	
	public void close() { 
	}
	
	public void init(Properties arg0) {
	}
}
