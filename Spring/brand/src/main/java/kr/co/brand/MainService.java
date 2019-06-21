package kr.co.brand;

import java.util.List;

import kr.co.brand.vo.ProductsVO;

public interface MainService {
	
	public List<ProductsVO> getNewProducts();
	
	public List<ProductsVO> getBestProducts();
	
}
