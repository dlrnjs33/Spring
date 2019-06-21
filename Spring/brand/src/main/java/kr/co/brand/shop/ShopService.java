package kr.co.brand.shop;

import java.util.List;

import kr.co.brand.vo.CartVO;
import kr.co.brand.vo.ProductCartVO;
import kr.co.brand.vo.ProductsVO;

public interface ShopService {

	public List<ProductsVO> list(String cat);
	
	public List<ProductsVO> best(String cat);
	
	public List<ProductsVO> listSales();
	
	public List<ProductsVO> listSalesBest();
	
	public ProductsVO view(String code);
	
	public List<ProductsVO> listOrder(ProductsVO vo);

	public List<ProductsVO> saleOrder(ProductsVO vo);
	
	public int insertCart(CartVO cvo);
	
	public List<CartVO> cart(ProductCartVO pvo);
	
}
