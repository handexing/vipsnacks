package com.snacks.menu.service;

import com.snacks.admin.entity.Admin;
import com.snacks.menu.dao.MenuDao;
import com.snacks.menu.dao.RoleMenuDao;
import com.snacks.menu.entity.Menu;
import com.snacks.menu.entity.RoleMenu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

import javax.transaction.Transactional;

@Service
public class MenuService {

	Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	MenuDao menuDao;
	@Autowired
	RoleMenuDao roleMenuDao;

	@Transactional
	public void delMenu(Long id) {
		menuDao.delete(id);
		roleMenuDao.delete(id);
	}

	@Transactional
	public void saveMenu(Menu menu, Admin admin) {
		if (menu.getId() != null) {
			// Employee emp = employeeDao.findOne(employee.getId());
			// employee.setUpateTime(new Date());
			// employee.setCreateTime(emp.getCreateTime());
			// employee.setStatus(emp.getStatus());
			// employee.setUserPsw(emp.getUserPsw());
		} else {
			menu.setCreateTime(new Date());
			menu.setStatus(0);
		}
		Menu menu2 = menuDao.save(menu);
		RoleMenu roleMenu = new RoleMenu();
		roleMenu.setMenuId(menu2.getId());
		roleMenu.setRoleId(admin.getRole().getId());
		roleMenuDao.save(roleMenu);

	}

}
