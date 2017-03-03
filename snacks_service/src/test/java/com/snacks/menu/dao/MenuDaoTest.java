package com.snacks.menu.dao;

import com.alibaba.fastjson.JSONObject;
import com.snacks.menu.entity.Menu;
import com.snacks.service.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class MenuDaoTest extends BaseTest {

	@Autowired
	MenuDao menuDao;
	
	@Test
	public void testMenuList() {
		List<Menu> partnets = menuDao.findParentMenuByRoleId(1L);
		List<Menu> childs = menuDao.findMenuByRoleId(1L);
		
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
		System.out.println(JSONObject.toJSONString(nodeList));
	}
}
