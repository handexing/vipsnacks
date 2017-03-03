package com.snacks.common.util;

import org.hibernate.cfg.ImprovedNamingStrategy;

public class MySqlLowerCaseStrategy extends ImprovedNamingStrategy {

	private static final long serialVersionUID = 1383021413247872469L;

	@Override
	public String tableName(String tableName) {
		return tableName.toLowerCase();
	}
}