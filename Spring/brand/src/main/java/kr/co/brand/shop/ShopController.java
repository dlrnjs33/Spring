package kr.co.brand.shop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod;

import kr.co.brand.vo.CartVO;
import kr.co.brand.vo.ProductCartVO;
import kr.co.brand.vo.ProductsVO;

@Controller
public class ShopController {
	
	@Inject
	private ShopService service;
	
	@RequestMapping("/shop/list.do")
	public String list(String cat, Model model) {
		
		List<ProductsVO> products = service.list(cat);
		List<ProductsVO> best = service.best(cat);
		
		model.addAttribute("products", products);
		model.addAttribute("best", best);
		model.addAttribute("cat", cat);
		
		return "/shop/list";
	}
	
	@ResponseBody
	@RequestMapping("/shop/listOrder.do")
	public List<ProductsVO> listOrder(String order, String cat, ProductsVO vo) {
		vo.setBp_cat(cat);
		vo.setOrder(order);
		
		List<ProductsVO> products = service.listOrder(vo);
		
		return products;
	}
	
	@RequestMapping("/shop/sales.do")
	public String listSales(Model model) {
		
		List<ProductsVO> products = service.listSales();
		List<ProductsVO> best = service.listSalesBest();
		
		model.addAttribute("products", products);
		model.addAttribute("best", best);
		
		return "/shop/saleList";
	}
	
	@ResponseBody
	@RequestMapping("/shop/saleOrder.do")
	public List<ProductsVO> saleOrder(String order, ProductsVO vo) {
		vo.setOrder(order);
		
		List<ProductsVO> products = service.saleOrder(vo);
		
		return products;
	}
	
	@RequestMapping("/shop/view.do")
	public String view(String code, Model model) {
		
		ProductsVO item = service.view(code);
		model.addAttribute("item", item);
		
		return "/shop/view";
	}
	
	@RequestMapping("/shop/cart.do")
	public String cart(ProductCartVO pvo,Model model) {
		
		List<CartVO> cart = service.cart(pvo);
		
		model.addAttribute("cart", cart);
		
		return "/shop/cart";
	}
	
	@ResponseBody
	@RequestMapping(value="/shop/cart.do", method=RequestMethod.POST)
	public int cart(@RequestBody CartVO cvo) {
		return service.insertCart(cvo);
	}
	
}
