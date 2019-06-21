package kr.co.brand.shop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.brand.vo.CartVO;
import kr.co.brand.vo.ProductCartVO;
import kr.co.brand.vo.ProductsVO;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Inject
	private ShopDAO dao;

	public List<ProductsVO> list(String cat) {
		return dao.list(cat);
	}
	
	@Override
	public List<ProductsVO> best(String cat) {
		return dao.best(cat);
	}

	@Override
	public List<ProductsVO> listSales() {
		return dao.listSales();
	}

	@Override
	public List<ProductsVO> listSalesBest() {
		return dao.listSalesBest();
	}

	@Override
	public List<ProductsVO> saleOrder(ProductsVO vo) {
		
		return dao.saleOrder(vo);
	}
	
	@Override
	public List<ProductsVO> listOrder(ProductsVO vo) {
	
		return dao.listOrder(vo);
	}

	@Override
	public ProductsVO view(String code) {
		return dao.view(code);
	}
	
	@Override
	public int insertCart(CartVO cvo) {
		
		return dao.insertCart(cvo);
		
	}

	@Override
	public List<CartVO> cart(ProductCartVO pvo) {
		return dao.cart(pvo);
	}

	

	
}
