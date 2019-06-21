package kr.co.brand.shop;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.brand.vo.CartVO;
import kr.co.brand.vo.ProductCartVO;
import kr.co.brand.vo.ProductsVO;

@Repository
public class ShopDAO {

	@Inject
	SqlSessionTemplate mybatis;
	
	public List<ProductsVO> list(String cat) {
		return mybatis.selectList("mapper.mapper_shop.list", cat);
	}
	
	public List<ProductsVO> best(String cat) {
		return mybatis.selectList("mapper.mapper_shop.best", cat);
	}
	
	public List<ProductsVO> listSales() {
		return mybatis.selectList("mapper.mapper_shop.listSales");
	}
	
	public List<ProductsVO> listSalesBest() {
		return mybatis.selectList("mapper.mapper_shop.listSalesBest");
	}
	
	public List<ProductsVO> listOrder(ProductsVO vo) {
		return mybatis.selectList("mapper.mapper_shop.listOrder", vo);
	}
	
	public List<ProductsVO> saleOrder(ProductsVO vo) {
		return mybatis.selectList("mapper.mapper_shop.saleOrder", vo);
	}
	
	public ProductsVO view(String code) {
		return mybatis.selectOne("mapper.mapper_shop.view", code);
	}
	
	public int insertCart(CartVO cvo) {
		return mybatis.insert("mapper.mapper_shop.insertCart", cvo);
	}
	
	public List<CartVO> cart(ProductCartVO pvo) {
		return mybatis.selectList("mapper.mapper_shop.cart", pvo);
	}
	
}
