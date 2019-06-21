package kr.co.brand.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.brand.vo.BoardVO;

@Controller
public class BoardController {

	@Inject
	private BoardService service;
	
	@RequestMapping("/board/board.do")
	public String board(BoardVO vo, Model model) {
		
		List<BoardVO> boards = service.board(vo);
		
		model.addAttribute("title", vo.getBb_cat());
		model.addAttribute("boards", boards);
		
		return "/board/board";
	}
	
	@RequestMapping("/board/boardView.do")
	public String noticeView(int seq, Model model) {
		
		BoardVO bvo = service.boardView(seq);
		model.addAttribute("bvo", bvo);
		
		return "/board/boardView";
	}
	
	@RequestMapping("/board/qna.do")
	public String qna() {
		return "/board/qna";
	}
	
}
