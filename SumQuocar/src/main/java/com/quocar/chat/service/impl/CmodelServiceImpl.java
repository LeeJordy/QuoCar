package com.quocar.chat.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.quocar.chat.dao.CmodelDao;
import com.quocar.chat.service.CmodelService;
import com.quocar.chat.vo.CmodelVo;

@Service("cmodelService")
public class CmodelServiceImpl implements CmodelService {

	@Autowired
	private CmodelDao  cmodelDao;


	@Override
	public List<CmodelVo> getCmodelList(CmodelVo vo) {
		List<CmodelVo>   cmodelList    = cmodelDao.getCmodelList(vo); 
		return cmodelList;
	}


	    public CmodelServiceImpl(CmodelDao cmodelDao) {
	        this.cmodelDao = cmodelDao;
	    }


}
