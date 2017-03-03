package com.snacks.utils;

import com.alibaba.fastjson.JSONObject;
import com.snacks.menu.entity.Menu;

import java.util.ArrayList;
import java.util.List;

public class ListToTreeUtils<T> {
	
	public String listTreeMenu(List<Menu> list) {
		
		List<Menu> nodeList = new ArrayList<Menu>();
		
		for (Menu node1 : list) {
			boolean mark = false;
			for (Menu node2 : list) {
				if (node1.getId().equals(node2.getPid())) {
					mark = true;
					if (node2.getChildren() == null) {
						node2.setChildren(new ArrayList<Menu>());
						node2.setText(node2.getName());
						node1.setText(node1.getName());
						node2.getChildren().add(node1);
						break;
					}
				}
			}
			if (!mark) {
				node1.setText(node1.getName());
				nodeList.add(node1);
			}
		}
		System.out.println(JSONObject.toJSONString(nodeList));
		return JSONObject.toJSONString(nodeList);
	}

}
