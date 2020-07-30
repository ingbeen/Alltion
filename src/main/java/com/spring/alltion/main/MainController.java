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
	
	@RequestMapping(value = "/getPopularList.hn", method = RequestMethod.GET)
	public void getPopularList(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		int limit = 8;
		int listcount = productlistService.getListCount();
		String startrow = Integer.toString((page - 1) * 8 + 1);
		String endrow = Integer.toString(Integer.parseInt(startrow) + limit - 1);
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("startrow", startrow);
		hashmap.put("endrow", endrow);
		List<ProductVO> mainlist = productlistService.getMain(hashmap);
		
		int maxpage = listcount / limit;
		if (listcount % limit > 0) {
			maxpage++;
		}
		if (maxpage < page) {
		    page = maxpage;
		}

		int startpage = ((page - 1) / 3) * 3 + 1;  
		
		model.addAttribute("page", page);
		model.addAttribute("listcount", listcount);
		model.addAttribute("mainlist", mainlist);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
	}
	
	@RequestMapping(value = "/getViewList.hn", method = RequestMethod.GET)
	public void getViewList(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		int limit = 8;
		int listcount = productlistService.getListCount();
		String startrow = Integer.toString((page - 1) * 8 + 1); // 1 9 17 25
		String endrow = Integer.toString(Integer.parseInt(startrow) + limit - 1); // 8 16 24 30
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("startrow", startrow);
		hashmap.put("endrow", endrow);
		List<ProductVO> viewList = productlistService.getParticipantsForMain(hashmap); 
		
		int maxpage = listcount / limit;
		if (listcount % limit > 0) {
			maxpage++;
		}
		if (maxpage < page) {
		    page = maxpage;
		}

		int startpage = ((page - 1) / 3) * 3 + 1;  
		
		model.addAttribute("page", page);
		model.addAttribute("listcount", listcount);
		model.addAttribute("viewList", viewList);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
	}
	
	@RequestMapping(value = "/getCategorylist.hn", method = RequestMethod.GET)
	public void getCategorylist(Model model, @RequestParam(value="page" , required=false, defaultValue="1") int page) {	
		int limit = 8;
		int listcount = productlistService.getCate01ListCount();
		String startrow = Integer.toString((page - 1) * 8 + 1); // 1 9 17 25
		String endrow = Integer.toString(Integer.parseInt(startrow) + limit - 1); // 8 16 24 30
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("startrow", startrow);
		hashmap.put("endrow", endrow);
		List<ProductVO> cateList = productlistService.getCate01List2(hashmap); 
		
		int maxpage = listcount / limit;
		if (listcount % limit > 0) {
			maxpage++;
		}
		if (maxpage < page) {
		    page = maxpage;
		}

		int startpage = ((page - 1) / 3) * 3 + 1;  
		
		model.addAttribute("page", page);
		model.addAttribute("listcount", listcount);
		model.addAttribute("cateList", cateList);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
	}
}