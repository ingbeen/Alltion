package com.spring.alltion.main;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.alltion.productList.ProductlistService;
import com.spring.alltion.productRegistration.ProductVO;

@Controller
public class MainController {

	@Autowired
	private ProductlistService productlistService;
	
	@RequestMapping(value = "/popularMain.hn", method = RequestMethod.GET)
	public String getMainlist(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page, @RequestParam(value = "sort", required = false, defaultValue = "1") String sort) {
		int limit = 8;
		int listcount = productlistService.getListCount();
		String startrow = Integer.toString((page - 1) * 8 + 1); // 1 9 17 25
		String endrow = Integer.toString(Integer.parseInt(startrow) + limit - 1); // 8 16 24 30
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("startrow", startrow);
		hashmap.put("endrow", endrow);
		hashmap.put("sort", sort);
		List<ProductVO> mainlist = productlistService.getMainlist2(hashmap);

		int maxpage = listcount / limit;
		int countPage = 3;
		if (listcount % limit > 0) {
			maxpage++;
		}
		if (maxpage < page) {
		    page = maxpage;
		}

		int startpage = ((page - 1) / 3) * 3 + 1;  
		int endpage = startpage + countPage - 1;  
		
		// 마지막 페이지를 보정
		if (endpage > maxpage) {
			endpage = maxpage;
		}
		model.addAttribute("page", page);
		model.addAttribute("listcount", listcount);
		model.addAttribute("mainlist", mainlist);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("pricelist", productlistService.getfamousPricelist2());
		model.addAttribute("participantslist", productlistService.getfamousParticipantslist2());
		model.addAttribute("viewslist", productlistService.getfamousViewslist2());
		model.addAttribute("sort", sort);
		
		return "productList/mainlist";
	}
}
