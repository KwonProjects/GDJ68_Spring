package com.iu.main.bankbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BankBookDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.iu.main.bankbook.BankBookDAO.";
	
	//List
	public List<BankBookDTO> getList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	//detail
	public BankBookDTO getDetail(BankBookDTO bankBookDTO)throws Exception{
				
		return sqlSession.selectOne(NAMESPACE+"getDetail", bankBookDTO);
	}
	
	public int setAdd(BankBookDTO bankBookDTO) throws Exception{
		
		return sqlSession.insert(NAMESPACE+"setAdd",bankBookDTO);
	}
	
	public int setDelete(Long num)throws Exception{
		//return sqlSession.delete(NAMESPACE+"setDelete",bankBookDTO.getBookNum());
		return sqlSession.delete(NAMESPACE+"setDelete",num);
	}
	public int setUpdate(BankBookDTO bankBookDTO) throws Exception{
		
		return sqlSession.update(NAMESPACE+"setUpdate", bankBookDTO);
	}
	
}
