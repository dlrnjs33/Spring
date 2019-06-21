package kr.co.brand;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.brand.member.MemberDAO;
import kr.co.brand.vo.MemberVO;

/*
 * spring-test 라이브러리 추가해야 SpringJUnit4ClassRunner 추가됨
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MemberDAOTeset {

	@Inject
	private MemberDAO dao;
	
	@Test
	public void loginTest() {
		
		MemberVO vo = new MemberVO();
		vo.setBm_uid("dlrnjs");
		vo.setBm_pass("123123");
		
		kr.co.brand.vo.MemberVO user = dao.login(vo);
		System.out.println("user:"+user.toString());
		
	}
	
	
}