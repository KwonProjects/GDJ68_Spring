
package com.iu.main.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	
	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeDTO> getList()throws Exception{
		
		return noticeDAO.getList();
	}
	
	public int setAdd(NoticeDTO noticeDTO)throws Exception{
		return noticeDAO.setAdd(noticeDTO);
	}

	public NoticeDTO getDetail(NoticeDTO noticeDTO) {
		
		return noticeDAO.getDetail(noticeDTO);
	}

	public int setUpdate(NoticeDTO noticeDTO) {
		return noticeDAO.setUpdate(noticeDTO);
	}

	public int setDelete(NoticeDTO noticeDTO) {
		return noticeDAO.setDelete(noticeDTO);
	}
	
	
}
