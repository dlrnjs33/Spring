package kr.co.brand.board;



import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.brand.vo.BoardVO;

@Repository
public class BoardDAO {

	@Inject
	SqlSessionTemplate mybatis;
	
	public List<BoardVO> board(BoardVO vo) {
		return mybatis.selectList("mapper.mapper_board.board", vo);
	}
		
	public BoardVO boardView(int seq) {
		return mybatis.selectOne("mapper.mapper_board.boardView", seq);
	}
	
}
