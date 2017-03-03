package com.snacks.admin.model;

import java.io.Serializable;

public class AdminCondition implements Serializable {

	private static final long serialVersionUID = 5202180263065261145L;
	private int pageNum;
	private int rows;
	private String nick;

	public String getNick() {
		return nick;
	}

	public int getPageNum() {
		return pageNum;
	}

	public int getRows() {
		return rows;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
