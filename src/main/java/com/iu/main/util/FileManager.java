package com.iu.main.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	 
	
	public  String fileSave(String path,HttpSession session,MultipartFile multipartFile) throws Exception {
		String realPath = session.getServletContext().getRealPath(path);
		
		File file = new File(realPath);
		
		if (!file.exists()) {
			file.mkdirs();
		}
		
		String uId = UUID.randomUUID().toString();
		System.out.println(realPath);
		uId = uId+"_"+multipartFile.getOriginalFilename();
		file = new File(file,uId);
		multipartFile.transferTo(file);
		return uId;
	 
	}

}
