package com.quocar.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quocar.board.dao.BoardDao;
import com.quocar.board.service.BoardService;
import com.quocar.board.vo.BoardVo;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private   BoardDao  boardDao;
	
	@Override
	public List getBoardList() {
		List    boardList = boardDao.getBoardList();
		return boardList;
	}
	
	/*
	@Override
	public List<BoardVo> getBoardList( String menu_id ) {
		
		List<BoardVo>  boardList  =  boardDao.getBoardList( menu_id  );
		
		return    boardList;
	}
	*/

	@Override
	public void insertBoard(BoardVo vo) {
		
		boardDao.insertBoard( vo );
		
	}

	@Override
	public BoardVo getBoard(int idx) {
		
		BoardVo  boardVo  =  boardDao.getBoard( idx );
		
		return   boardVo;
	}

	@Override
	public void deleteBoard(BoardVo vo) {
		
		boardDao.deleteBoard( vo );
		
	}

	@Override
	public void incrementReadCount(int idx) {
		
		boardDao.incrementReadCount( idx );
		
	}

	@Override
	public void updateBoard(BoardVo vo) {
		
		boardDao.updateBoard( vo );
		
	}




}







