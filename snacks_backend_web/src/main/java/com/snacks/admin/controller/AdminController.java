package com.snacks.admin.controller;

import com.snacks.admin.dao.AdminDao;
import com.snacks.admin.entity.Admin;
import com.snacks.admin.model.AdminCondition;
import com.snacks.admin.service.AdminService;
import com.snacks.common.model.ErrorCode;
import com.snacks.common.model.ExecuteResult;
import com.snacks.common.model.PaginationData;
import com.snacks.menu.dao.MenuDao;
import com.snacks.menu.entity.Menu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AdminDao adminDao;
	@Autowired
	AdminService adminService;
	@Autowired
	MenuDao menuDao;

	Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping("adminList")
	public ExecuteResult<PaginationData<Admin>> listEmployee(AdminCondition condition) {
		final ExecuteResult<PaginationData<Admin>> result = new ExecuteResult<>();
		try {
			result.setData(adminService.queryAdminByCondition(condition));
			result.setSuccess(true);
		} catch (final Exception e) {
			logger.error("", e);
			result.setSuccess(false);
			result.setErrorCode(ErrorCode.EXCEPTION.name());
		}
		return result;
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public void logout(HttpSession session, HttpServletResponse response) throws IOException {
		session.invalidate();
		response.sendRedirect("../login.jsp");
	}
	
	// 查询全部菜单
	@RequestMapping("menuAllList")
	public ExecuteResult<List<Menu>> menuList(HttpSession session) {
		final ExecuteResult<List<Menu>> result = new ExecuteResult<>();
		try {
			Admin admin = (Admin) session.getAttribute("admin");
			List<Menu> partnets = menuDao.findParentMenuByRoleId(admin.getRole().getId());
			List<Menu> childs = menuDao.findMenuByRoleId(admin.getRole().getId());
			List<Menu> nodeList = new ArrayList<Menu>();
			
			for (Menu parent : partnets) {
				parent.setText(parent.getName());
				nodeList.add(parent);
				for (Menu child : childs) {
					if (parent.getId().equals(child.getPid())) {
						if (parent.getChildren() == null) {
							parent.setChildren(new ArrayList<Menu>());
						}
						child.setText(child.getName());
						parent.getChildren().add(child);
					}
				}
			}
			result.setSuccess(true);
			result.setData(nodeList);
		} catch (final Exception e) {
			logger.error("", e);
			result.setErrorMsg(e.getMessage());
			result.setSuccess(false);
			result.setErrorCode(ErrorCode.EXCEPTION.name());
		}
		return result;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ExecuteResult<Admin> newLogin(HttpSession session, final String name, final String psw) {
		ExecuteResult<Admin> result = new ExecuteResult<>();
		Admin admin = adminDao.findByNameAndPsw(name, psw);
		if (admin != null) {
			session.setAttribute("admin", admin);
			result.setSuccess(true);
			result.setData(admin);
		} else {
			result.setSuccess(false);
			result.setErrorCode(ErrorCode.USERNAME_OR_PWD_ERROR.name());
			result.setErrorMsg(ErrorCode.USERNAME_OR_PWD_ERROR.getErrorMsg());
		}
		return result;
	}

	@RequestMapping("adminPage")
	public ModelAndView showConfigPage() {
		return new ModelAndView("/admin/adminList");
	}
}
