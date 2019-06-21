package kr.co.brand;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.brand.board.BoardDAO;
import kr.co.brand.member.MemberDAO;
import kr.co.brand.vo.BoardVO;
import kr.co.brand.vo.MemberVO;

/*
 * spring-test 라이브러리 추가해야 SpringJUnit4ClassRunner 추가됨
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class BoardDAOTeset {

	@Inject
	private BoardDAO dao;
	
	
}