package com.snacks.common.model;

import java.util.List;

public class PaginationData<T> {
	/**
	 * 总数
	 */
	private long total;
	/**
	 * 总页数
	 */
	private int totalPage;
	/**
	 * 当前页
	 */
	private int pageNum;
	/**
	 * 每页的数量
	 */
	private int pageSize;
	/**
	 * 结果
	 */
	private List<T> resultList;

	public int getPageNum() {
		return pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public List<T> getResultList() {
		return resultList;
	}

	public long getTotal() {
		return total;
	}

	public long getTotalPage() {
		return totalPage;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setResultList(List<T> resultList) {
		this.resultList = resultList;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
}
