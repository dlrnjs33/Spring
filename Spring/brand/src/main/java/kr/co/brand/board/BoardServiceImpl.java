package kr.co.brand.board;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.batch.MyBatisBatchItemWriter;
import org.springframework.stereotype.Service;

import kr.co.brand.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> board(BoardVO vo) {
		return dao.board(vo);
	}
	
	@Override
	public BoardVO boardView(int seq) {
		
		return dao.boardView(seq);
		
	}

	
}
