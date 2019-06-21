package kr.co.brand.member;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.brand.vo.MemberVO;
import kr.co.brand.vo.TermsVO;

@Service
public class MemberSeriveImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public MemberVO login(MemberVO vo) {
		return dao.login(vo);
	}
	
	@Override
	public TermsVO terms() {
		return dao.terms();
	}

	@Override
	public void register(MemberVO vo) {
		dao.register(vo);		
	}

}
