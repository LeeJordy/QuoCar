package com.quocar.board.service;

import java.util.List;

import com.quocar.board.vo.BoardVo;

public interface BoardService {

	/*List<BoardVo> getBoardList(String menu_id);*/
	List getBoardList();

	void insertBoard(BoardVo vo);

	BoardVo getBoard(int idx);

	void deleteBoard(BoardVo vo);

	void incrementReadCount(int idx);

	void updateBoard(BoardVo vo);


}
