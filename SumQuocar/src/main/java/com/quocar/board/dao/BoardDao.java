package com.quocar.board.dao;

import java.util.List;

import com.quocar.board.vo.BoardVo;

public interface BoardDao {

	/*List<BoardVo> getBoardList(String menu_id);*/
	List getBoardList();

	void insertBoard(BoardVo vo);

	BoardVo getBoard(int idx);

	void deleteBoard(BoardVo vo);

	void incrementReadCount(int idx);

	void updateBoard(BoardVo vo);


}
