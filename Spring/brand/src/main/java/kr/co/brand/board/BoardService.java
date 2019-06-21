package kr.co.brand.board;

import java.util.List;

import kr.co.brand.vo.BoardVO;

public interface BoardService {
	
	public List<BoardVO> board(BoardVO vo);
	
	public BoardVO boardView(int seq);
	
}
