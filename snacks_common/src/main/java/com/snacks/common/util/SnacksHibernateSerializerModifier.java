package com.snacks.common.util;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.datatype.hibernate4.HibernateSerializerModifier;

import org.hibernate.SessionFactory;

import java.util.List;

public class SnacksHibernateSerializerModifier extends HibernateSerializerModifier {
	public SnacksHibernateSerializerModifier(int features, SessionFactory sessionFactory) {
		super(features, sessionFactory);
	}

	@Override
	public List<BeanPropertyWriter> changeProperties(SerializationConfig config, BeanDescription beanDesc,
			List<BeanPropertyWriter> beanProperties) {
		for (int i = 0; i < beanProperties.size(); i++) {
			BeanPropertyWriter writer = beanProperties.get(i);
			beanProperties.set(i, new SnacksBeanPropertyWriter(writer));
		}
		return beanProperties;
	}

}
