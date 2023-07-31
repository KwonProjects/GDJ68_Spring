
package com.iu.main.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.main.bankbook.BankBookDTO;
import com.iu.main.util.FileManager;
import com.iu.main.util.Pager;

@Service
public class NoticeService {

	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	public List<NoticeDTO> getList(Pager pager) throws Exception {


		pager.makeRowNum();
		Long total = noticeDAO.getTotal(pager);
		pager.makePageNum(total);

		
		return noticeDAO.getList(pager);
	}

	public int setAdd(NoticeDTO noticeDTO, MultipartFile multipartFile, HttpSession session)throws Exception{
		
		String path = "/resources/upload/notice/";
		int result = noticeDAO.setAdd(noticeDTO);
		
		if (!multipartFile.isEmpty()) {
			String fileName = fileManager.fileSave(path, session, multipartFile);
			NoticeFileDTO noticeFileDTO = new NoticeFileDTO();
			noticeFileDTO.setFileNum(noticeDTO.getNoticeNum());
			noticeFileDTO.setOriginalName(multipartFile.getOriginalFilename());
			noticeFileDTO.setFileName(fileName);
			result  = noticeDAO.setFileAdd(noticeFileDTO);
			
		}
		return result;
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
