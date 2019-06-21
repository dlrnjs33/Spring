package kr.co.brand;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.brand.vo.ProductsVO;

@Service
public class MainSericeImpl implements MainService {

	@Inject
	private MainDAO dao;

	@Override
	public List<ProductsVO> getNewProducts() {
		return dao.getNewProducts();
	}

	@Override
	public List<ProductsVO> getBestProducts() {
		return dao.getBestProducts();
	}
	
}
