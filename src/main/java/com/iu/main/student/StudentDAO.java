package com.iu.main.student;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAO {
	
	@Autowired
	private SqlSession session;
	
	private final String NAMESPACE="com.iu.main.student.StudentDAO.";
	
	public List<StudentDTO> getList() throws Exception{
		return session.selectList(NAMESPACE+"getList"); 
	}
	
	public StudentDTO getDetail(StudentDTO studentDTO) throws Exception{
		return session.selectOne(NAMESPACE+"getDetail",studentDTO);
	}
	public int addStudent(StudentDTO studentDTO) throws Exception{
		return session.insert(NAMESPACE+"addStudent",studentDTO);
	}

}
