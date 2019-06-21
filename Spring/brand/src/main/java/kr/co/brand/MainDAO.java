package kr.co.brand;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.brand.vo.ProductsVO;

@Repository
public class MainDAO {

	@Inject
	SqlSessionTemplate mybatis;
	
	public List<ProductsVO> getNewProducts() {
		return mybatis.selectList("mapper.mapper_main.getNewProducts");
	}
	
	public List<ProductsVO> getBestProducts() {
		return mybatis.selectList("mapper.mapper_main.getBestProducts");
	}
	
}
