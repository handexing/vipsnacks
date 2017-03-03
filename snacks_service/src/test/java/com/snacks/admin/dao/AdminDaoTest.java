package com.snacks.admin.dao;

import com.snacks.admin.dao.AdminDao;
import com.snacks.admin.entity.Admin;
import com.snacks.service.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class AdminDaoTest extends BaseTest {

	@Autowired
	AdminDao adminDao;
	
	@Test
	public void testlogin() {
		Admin admin = adminDao.findByNameAndPsw("handx", "123456");
		System.out.println(admin);
	}
	
	
}
