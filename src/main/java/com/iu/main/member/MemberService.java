package com.iu.main.member;

import java.io.File;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	
	public int setJoin(MemberDTO memberDTO, MultipartFile multipartFile,HttpSession session)throws Exception{
		//파일의 정보를 이용해서 HDD에 파일을 저장
		
		//1. 어디에 저장??
		String path="/resources/upload/member/";
		
		//2. 실제 경로 알아오기
		//jsp : application
		//java : ServletContext
		String realPath = session.getServletContext().getRealPath(path);
		System.out.println(realPath);
		
		File file = new File(realPath);
		
		if (!file.exists()) {
			file.mkdirs();
		}
		
		Calendar ca = Calendar.getInstance();
		long result = ca.getTimeInMillis();
		file = new File(file,result+"_"+multipartFile.getOriginalFilename());
		
	//	file = new File(file,multipartFile.getOriginalFilename());
		
		//4.파일 저장
		//a. Spring에서 제공하는 API- CopyUtilis method
		//FileCopyUtils.copy(multipartFile.getBytes(), file);
		multipartFile.transferTo(file);
		return memberDAO.setJoin(memberDTO);
	}
	
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.getLogin(memberDTO);
	}
	public int setMemberUpdate(MemberDTO memberDTO)throws Exception{
		return memberDAO.setMemberUpdate(memberDTO);
	}	

}