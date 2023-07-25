package com.iu.main.notice;

import java.sql.Date;

public class NoticeDTO {
	
	private Long no;
	private String subject;
	private String contents;
	private String name;
	private Date createdate;
	private Integer hit;
	
	

	
	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}

	public String getSubject() {
		return subject;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public Integer getHit() {
		return hit;
	}
	
	public void setHit(Integer hit) {
		this.hit = hit;
	}
	
	
	
	
	
}
