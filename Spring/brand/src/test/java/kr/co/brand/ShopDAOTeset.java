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

import kr.co.brand.member.MemberDAO;
import kr.co.brand.shop.ShopDAO;
import kr.co.brand.vo.CartVO;
import kr.co.brand.vo.MemberVO;
import kr.co.brand.vo.ProductsVO;

/*
 * spring-test 라이브러리 추가해야 SpringJUnit4ClassRunner 추가됨
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class ShopDAOTeset {

	@Inject
	private ShopDAO dao;
	
	
	public void order() {
		
		ProductsVO vo = new ProductsVO();
		//vo.setBp_cat("outer");
		vo.setOrder("sales");
		
		List<ProductsVO> products = dao.saleOrder(vo);
		
		for(ProductsVO item : products) {
			System.out.println("name:"  + item.getBp_name() + "sale: " + item.getBp_sale_count());
		}
	}
	
	@Test
	public void cart() {
		//"bc_uid":"dlrnjs33","bc_code":"93030121","bc_name":"슬로우 웨이브 네온사인 서퍼 티셔츠_","bc_option":"","bc_price":"32000","bc_discount":"0","bc_total":"27000"
		CartVO cvo = new CartVO();
		
		
		dao.insertCart(cvo);
	}
	
	
}