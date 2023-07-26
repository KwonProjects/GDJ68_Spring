
package com.iu.main.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.main.bankbook.BankBookDTO;
import com.iu.main.util.Pager;

@Service
public class NoticeService {

	
	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeDTO> getList(Pager pager) throws Exception {
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		//page		startRow	lastRow
//		//1			1			10
//		//2			11			20
//		//3			21			30
//		//....
//		int count=10;
//		int startRow= (page-1)*count+1; 
//		int lastRow=page*count;		

		pager.makeRowNum();
		Long total = noticeDAO.getTotal();
		pager.makePageNum(total);

//		map.put("startRow", startRow);
//		map.put("lastRow", lastRow);
		return noticeDAO.getList(pager);
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
