package com.quocar.chat.dao;

import java.util.List;

import com.quocar.chat.vo.MechanicVo;

public interface MechanicDao {

	List<MechanicVo> getMechanicList(MechanicVo vo);

}
