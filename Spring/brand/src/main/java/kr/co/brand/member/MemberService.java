package kr.co.brand.member;

import kr.co.brand.vo.MemberVO;
import kr.co.brand.vo.TermsVO;

public interface MemberService {
	
	public MemberVO login(MemberVO vo);
	
	public TermsVO terms();
	
	public void register(MemberVO vo);
	
}
