package io.pivotal.eventhandlers;

import io.pivotal.domain.Person;

import java.util.Properties;

import com.gemstone.gemfire.cache.Declarable;
import com.gemstone.gemfire.cache.EntryEvent;
import com.gemstone.gemfire.cache.util.CacheWriterAdapter;
import com.gemstone.gemfire.internal.cache.EntryEventImpl;
import com.gemstone.gemfire.pdx.PdxInstance;
import com.gemstone.gemfire.pdx.WritablePdxInstance;

public class SimpleWriter<K,V> extends CacheWriterAdapter<K,V> implements Declarable {

	/*
	 * (non-Javadoc)
	 * @see com.gemstone.gemfire.cache.util.CacheWriterAdapter#beforeCreate(com.gemstone.gemfire.cache.EntryEvent)
	 */
	@Override
	 public void beforeCreate(EntryEvent<K, V> event) {

		 /*
		  * when inserting a new record I am going to update the name "Williams" to "Taylor"
		  */
		 EntryEventImpl eventImpl = (EntryEventImpl) event;

		 Object cachedPerson = event.getNewValue();
		 if (cachedPerson instanceof PdxInstance) {

			 PdxInstance pdxPerson = (PdxInstance) cachedPerson;
			 String name = (String) pdxPerson.getField("name");
			 if (name != null && name.equals("Williams")) {
				 // Update a field and put it back into the cache
				 // without deserializing the entire object
				 // pretty amazing stuff that no other in-memory product does
				 WritablePdxInstance writablePdxPerson = pdxPerson.createWriter();
				 writablePdxPerson.setField("name", name.substring(0, name.indexOf(" ")) + "Taylor");
				 eventImpl.setNewValue((PdxInstance) writablePdxPerson);
			 }
		 }
		 else if (cachedPerson instanceof Person) {
			 Person person = (Person) event.getNewValue();
			 if (person.getName().endsWith("Williams"))
				 person.replaceLastName("Taylor");
		 }
		 eventImpl.makeSerializedNewValue();
	 }

	public void init(Properties arg0) {
		// get properties to inform this program what to look for
	}
}
