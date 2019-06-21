package kr.co.brand.member;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.brand.vo.MemberVO;
import kr.co.brand.vo.TermsVO;

@Repository
public class MemberDAO {

	@Inject
	SqlSessionTemplate mybatis;
	
	public MemberVO login(MemberVO vo) {
		return mybatis.selectOne("mapper.mapper_member.login", vo);
	}
	
	public TermsVO terms() {
		return mybatis.selectOne("mapper.mapper_member.terms");
	}
	
	public void register(MemberVO vo) {
		mybatis.insert("mapper.mapper_member.register", vo);
	}
	
}
