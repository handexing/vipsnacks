package com.snacks.common.util;

import com.snacks.common.model.PaginationData;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Fetch;
import javax.persistence.criteria.From;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;
import javax.persistence.criteria.Selection;

public class PaginationQuery<T> {
	/** 别名数 */
	private static volatile long aliasCount = 0;
	private static final long maxAliasCount = 10000;
	EntityManager entityManager;
	
	public PaginationQuery(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	private void copyFetches(Fetch<?, ?> from, Fetch<?, ?> to) {
		for (final Fetch<?, ?> fetch : from.getFetches()) {
			final Fetch<?, ?> toFetch = to.fetch(fetch.getAttribute().getName());
			copyFetches(fetch, toFetch);
		}
	}

	private void copyJoins(From<?, ?> from, From<?, ?> to) {
		for (final Join<?, ?> join : from.getJoins()) {
			final Join<?, ?> toJoin = to.join(join.getAttribute().getName(), join.getJoinType());
			toJoin.alias(getAlias(join));
			copyJoins(join, toJoin);
		}
		for (final Fetch<?, ?> fetch : from.getFetches()) {
			final Fetch<?, ?> toFetch = to.fetch(fetch.getAttribute().getName());
			copyFetches(fetch, toFetch);
		}
	}

	private synchronized String getAlias(Selection<?> selection) {
		if (selection != null) {
			String alias = selection.getAlias();
			if (alias == null) {
				if (aliasCount >= maxAliasCount) {
					aliasCount = 0;
				}
				alias = "shopxxGeneratedAlias" + aliasCount++;
				selection.alias(alias);
			}
			return alias;
		}
		return null;
	}

	private Root<T> getRoot(CriteriaQuery<?> criteriaQuery, Class<T> clazz) {
		if (criteriaQuery != null && criteriaQuery.getRoots() != null && clazz != null) {
			for (final Root<?> root : criteriaQuery.getRoots()) {
				if (clazz.equals(root.getJavaType())) {
					return (Root<T>) root.as(clazz);
				}
			}
		}
		return null;
	}

	private Root<T> getRoot(CriteriaQuery<T> criteriaQuery) {
		if (criteriaQuery != null) {
			return getRoot(criteriaQuery, criteriaQuery.getResultType());
		}
		return null;
	}

	public PaginationData<T> queryListByPage(CriteriaQuery<T> criteriaQuery, int pageNum, int rows) {
		final CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		final CriteriaQuery<Long> countCriteriaQuery = cb.createQuery(Long.class);
		final Root<T> root = getRoot(criteriaQuery);
		for (final Root<?> r : criteriaQuery.getRoots()) {
			final Root<?> dest = countCriteriaQuery.from(r.getJavaType());
			dest.alias(getAlias(r));
			copyJoins(r, dest);
		}
		countCriteriaQuery.select(cb.count(root));
		if (criteriaQuery.getRestriction() != null) {
			countCriteriaQuery.where(criteriaQuery.getRestriction());
		}

		final Long total = entityManager.createQuery(countCriteriaQuery).getSingleResult();
		final int page = PageUtil.calcPage(pageNum) * rows;
		final List<T> list = entityManager.createQuery(criteriaQuery).setFirstResult(page).setMaxResults(rows)
				.getResultList();
		final PaginationData<T> result = new PaginationData<>();
		result.setResultList(list);
		result.setTotal(total);
		result.setPageNum(pageNum);
		return result;
	}

	/**
	 * 原生sql分页查询
	 * 
	 * @param sql sql
	 * @param param 参数
	 * @param start 开始
	 * @param rows 查询行
	 * @param t 对象
	 * @return 查询结果
	 */
	public PaginationData<T> queryListByPage(String sql, Object[] param, int start, int rows, T t) {
		final PaginationData<T> result = new PaginationData<T>();
		final String countSql = "select count(1) from (" + sql + ") a";
		final Query queryTotal = entityManager.createNativeQuery(countSql);
		for (int i = 0; i < param.length; i++) {
			queryTotal.setParameter(i + 1, param[i]);
		}
		final Long total = Long.valueOf(queryTotal.getFirstResult());
		result.setTotal(total);
		sql += " limit " + start + "," + rows;

		final Query queryResult = entityManager.createNativeQuery(sql, t.getClass());
		for (int i = 0; i < param.length; i++) {
			queryResult.setParameter(i + 1, param[i]);
		}
		@SuppressWarnings("unchecked")
		final List<T> list = queryResult.getResultList();
		result.setResultList(list);
		final int page = total % rows == 0 ? Double.valueOf(total / rows).intValue()
				: Double.valueOf(total / rows).intValue() + 1;
		result.setPageNum(page);
		return result;
	}

}
