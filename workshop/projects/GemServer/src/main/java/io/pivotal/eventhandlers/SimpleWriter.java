package io.pivotal.eventhandlers;

import io.pivotal.domain.Person;

import java.util.Properties;

import com.gemstone.gemfire.cache.Declarable;
import com.gemstone.gemfire.cache.EntryEvent;
import com.gemstone.gemfire.cache.util.CacheWriterAdapter;
import com.gemstone.gemfire.internal.cache.EntryEventImpl;
import com.gemstone.gemfire.pdx.PdxInstance;
import com.gemstone.gemfire.pdx.WritablePdxInstance;

public class SimpleWriter extends CacheWriterAdapter<String, Person> implements Declarable {

	 public void beforeCreate(EntryEvent<String, Person> event) {

		 EntryEventImpl eventImpl = (EntryEventImpl) event;

		 Object cachedPerson = event.getNewValue();
		 if (cachedPerson instanceof PdxInstance) {

			 PdxInstance pdxPerson = (PdxInstance) cachedPerson;

			 // Update a field and put it back into the cache
			 // without deserializing the entire object
			 WritablePdxInstance writablePdxPerson = pdxPerson.createWriter();
			 writablePdxPerson.setField("name", "Fulano");
			 eventImpl.setNewValue((PdxInstance) writablePdxPerson);
		 }
		 else {
			 Person person =  (Person) event.getNewValue();
			 person.setName("Fulano");
		 }
		 eventImpl.makeSerializedNewValue();
	 }

	public void init(Properties arg0) {
	}
}
