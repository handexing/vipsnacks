package com.snacks.common.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;

import org.hibernate.collection.spi.PersistentCollection;

public class SnacksBeanPropertyWriter extends BeanPropertyWriter {
	private static final long serialVersionUID = 1L;

	public SnacksBeanPropertyWriter(BeanPropertyWriter pw) {
		super(pw);
	}

	@Override
	public void serializeAsField(Object bean, JsonGenerator gen, SerializerProvider prov) throws Exception {
		final Object value = (_accessorMethod == null) ? _field.get(bean) : _accessorMethod.invoke(bean);
		if (value instanceof PersistentCollection) {
			if (!((PersistentCollection) value).wasInitialized() && _suppressNulls) {
				return;
			}
		}
		super.serializeAsField(bean, gen, prov);
	}

}
