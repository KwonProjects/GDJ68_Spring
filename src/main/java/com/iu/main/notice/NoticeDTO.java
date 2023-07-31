package com.iu.main.notice;

import java.sql.Date;

public class NoticeDTO {
	
	private Long noticeNum;
	private String subject;
	private String contents;
	private String name;
	private Date createdate;
	private Integer hit;
	
	public Long getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(Long noticeNum) {
		this.noticeNum = noticeNum;
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
