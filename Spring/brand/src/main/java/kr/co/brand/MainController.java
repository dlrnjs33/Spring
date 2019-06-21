package kr.co.brand;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.brand.vo.ProductsVO;

@Controller
public class MainController {
	
	@Inject
	private MainService service;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<ProductsVO> products = service.getNewProducts();
		List<ProductsVO> bests = service.getBestProducts();
		model.addAttribute("products",products);
		model.addAttribute("bests",bests);
		
		return "/index";
	}
	
}
