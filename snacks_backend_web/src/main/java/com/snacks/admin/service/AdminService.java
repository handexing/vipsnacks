package com.snacks.admin.service;

import com.snacks.admin.entity.Admin;
import com.snacks.admin.model.AdminCondition;
import com.snacks.common.model.PaginationData;
import com.snacks.common.util.PaginationQuery;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

@Service
public class AdminService {

	@Autowired
	EntityManager entityManager;

	Logger logger = LoggerFactory.getLogger(this.getClass());

	public PaginationData<Admin> queryAdminByCondition(AdminCondition condition) {

		final int pageNum = condition.getPageNum();
		final int rows = condition.getRows();
		final CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		final CriteriaQuery<Admin> criteriaQuery = cb.createQuery(Admin.class);
		final Root<Admin> root = criteriaQuery.from(Admin.class);
		final List<Predicate> predicates = new ArrayList<Predicate>();
		final Expression<String> nickExp = root.get("nick");

		if (condition.getNick() != null) {
			predicates.add(cb.like(nickExp, "%" + condition.getNick() + "%"));
		}

		final Predicate[] p = new Predicate[predicates.size()];
		cb.and(predicates.toArray(p));
		criteriaQuery.where(p);
		final PaginationQuery<Admin> query = new PaginationQuery<>(entityManager);
		final PaginationData<Admin> result = query.queryListByPage(criteriaQuery, pageNum, rows);

		return result;
	}
}
