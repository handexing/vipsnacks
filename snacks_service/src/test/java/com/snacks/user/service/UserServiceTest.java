package com.snacks.user.service;

import com.snacks.service.BaseTest;
import com.snacks.user.entity.User;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class UserServiceTest extends BaseTest {

	@Autowired 
	UserService userService;
	
	@Test
	public void testSaveUser() {
		User user = new User();
		user.setCreateTime(new Date());
		user.setPhone("110");
		user.setUserName("handx");
		user.setPsw("132");
		userService.saveUser(user);
	}
	
	
}
