package com.snacks.common.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.hibernate4.Hibernate4Module.Feature;

public class HibernateAwareObjectMapper extends ObjectMapper {

	private static final long serialVersionUID = 1L;

	public HibernateAwareObjectMapper() {
		final SnacksHibernate4Module module = new SnacksHibernate4Module();
		module.disable(Feature.USE_TRANSIENT_ANNOTATION);
		configure(SerializationFeature.INDENT_OUTPUT, true);
		registerModule(module);
	}
}
