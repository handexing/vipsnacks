package com.snacks.common.util;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.datatype.hibernate4.Hibernate4Module;
import com.fasterxml.jackson.datatype.hibernate4.HibernateSerializers;

public class SnacksHibernate4Module extends Hibernate4Module {
	@Override
	public void setupModule(SetupContext context) {
		AnnotationIntrospector ai = annotationIntrospector();
		if (ai != null) {
			context.appendAnnotationIntrospector(ai);
		}
		context.addSerializers(new HibernateSerializers(_mapping, _moduleFeatures));
		context.addBeanSerializerModifier(new SnacksHibernateSerializerModifier(_moduleFeatures, _sessionFactory));
	}
}
