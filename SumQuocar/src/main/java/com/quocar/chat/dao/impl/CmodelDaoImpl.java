package com.quocar.chat.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.chat.dao.CmodelDao;
import com.quocar.chat.vo.CmodelVo;

@Repository("cmodelDao")
public class CmodelDaoImpl implements CmodelDao {
	@Autowired
	private SqlSession sqlSession;


	@Override
	public List<CmodelVo> getCmodelList(CmodelVo vo) {
		List<CmodelVo>   cmodelList   = sqlSession.selectList("Cmodel.CmodelList", vo);  
		return cmodelList;
	}



}
