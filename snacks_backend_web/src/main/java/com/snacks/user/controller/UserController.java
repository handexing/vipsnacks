package com.snacks.user.controller;

import com.snacks.common.model.ErrorCode;
import com.snacks.common.model.ExecuteResult;
import com.snacks.user.entity.User;
import com.snacks.user.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

	@Autowired
	UserService userService;
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping("/user/config/listUser")
	public ExecuteResult<List<User>> listUserRelation() {
		final ExecuteResult<List<User>> result = new ExecuteResult<>();
		try {
			result.setData(userService.listUser());
			result.setSuccess(true);
		} catch (final Exception e) {
			logger.error("", e);
			result.setSuccess(false);
			result.setErrorCode(ErrorCode.EXCEPTION.name());
		}
		return result;
	}

}
