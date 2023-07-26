package com.iu.main.util;

public class Pager {

	private Long startRow;
	private Long lastRow;

	private Long page;

	// 한페이지에 보여질 data(Row)의 갯수
	private Long perPage;

	// 총 페이지의 갯수
	private Long totalPage;

	// 시작번호
	private Long startNum;
	// 끝번호
	private Long lastNum;

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}

	public void makePageNum(Long total) {
		// 1. 전체 갯수로 전체 페이지 수 구하기
		this.totalPage = total / this.getPerPage();
		if (this.totalPage % this.getPerPage() != 0) {
			totalPage++;
		}

		// 2. 전체 페이지수로 젠체 block 수 구하기

		long perBlock = 10;
		long totalBlock = this.totalPage / perBlock;
		if (this.totalPage % perBlock != 0) {
			totalBlock++;
		}
		// 3. 현재 page 번호로 블럭번호 구하기
		// 현재 블럭 번호
		long curBlock = this.getPage() / perBlock;
		if (this.getPage() % perBlock != 0) {
			curBlock++;
		}
		// 4. 현재 블럭번호의 시작번호와 끝번호 구하기
		this.startNum = ((curBlock - 1) * perBlock) + 1;
		this.lastNum = curBlock * perBlock;
	}

	public void makeRowNum() {
		this.startRow = (this.getPage() - 1) * this.getPerPage() + 1;
		this.lastRow = this.getPage() * this.getPerPage();
	}

	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}

	public Long getLastRow() {
		return lastRow;
	}

	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}

	public Long getPage() {
		if (this.page == null) {
			this.page = 1L;
		}
		return page;
	}

	public void setPage(Long page) {
		this.page = page;
	}

	public Long getPerPage() {
		if (perPage == null) {
			perPage = 5L;
		}
		return perPage;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}

	public Long getStartRow() {
		return startRow;
	}

	public Long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}

}
