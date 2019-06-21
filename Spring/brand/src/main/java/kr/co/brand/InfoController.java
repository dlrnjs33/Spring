package kr.co.brand;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	
	@RequestMapping("/info/brand.do")
	public String brand() {
		return "/info/brand";
	}
	
	@RequestMapping("/info/store.do")
	public String store() {
		return "/info/store";
	}
}
