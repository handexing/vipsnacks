package com.snacks.user.service;

import com.snacks.user.dao.UserDao;
import com.snacks.user.entity.User;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserService {
	
	Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired 
	UserDao userDao;

	public void saveUser(User user) {
		userDao.save(user);
	}

	public List<User> listUser() {
		return userDao.findAll();
	} 
}
