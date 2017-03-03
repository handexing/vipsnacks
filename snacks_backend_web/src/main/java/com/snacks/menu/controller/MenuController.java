package com.snacks.menu.controller;

import com.snacks.admin.entity.Admin;
import com.snacks.common.model.ErrorCode;
import com.snacks.common.model.ExecuteResult;
import com.snacks.menu.dao.MenuDao;
import com.snacks.menu.entity.Menu;
import com.snacks.menu.service.MenuService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("menu")
public class MenuController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	MenuDao menuDao;
	@Autowired
	MenuService menuService;
	
	@RequestMapping("delMenu")
	public ExecuteResult<Boolean> delMenu(Long id) {
		final ExecuteResult<Boolean> result = new ExecuteResult<>();
		try {
			menuService.delMenu(id);
			result.setSuccess(true);
		} catch (final Exception e) {
			logger.error("", e);
			result.setSuccess(false);
			result.setErrorCode(ErrorCode.EXCEPTION.name());
		}
		return result;
	}
	
	// 根据权限查询所属菜单
	@RequestMapping("menuList")
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

	@RequestMapping("saveMenu")
	public ExecuteResult<Boolean> saveMenu(@RequestBody Menu menu, HttpSession session) {
		final ExecuteResult<Boolean> result = new ExecuteResult<>();
		try {
			Admin admin = (Admin) session.getAttribute("admin");
			menuService.saveMenu(menu, admin);
			result.setSuccess(true);
		} catch (final Exception e) {
			logger.error("", e);
			result.setSuccess(false);
			result.setErrorCode(ErrorCode.EXCEPTION.name());
		}
		return result;
	}

	@RequestMapping("menuPage")
	public ModelAndView showConfigPage() {
		return new ModelAndView("/menu/menuList");
	}

}
