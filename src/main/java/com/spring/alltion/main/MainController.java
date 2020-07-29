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
	
	@RequestMapping(method = RequestMethod.GET)
	public void getPopularList(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		int limit = 8;
		int listcount = productlistService.getListCount();
		String startrow = Integer.toString((page - 1) * 8 + 1); // 1 9 17 25
		String endrow = Integer.toString(Integer.parseInt(startrow) + limit - 1); // 8 16 24 30
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("startrow", startrow);
		hashmap.put("endrow", endrow);
		//hashmap.put("sort", sort);
		List<ProductVO> mainlist = productlistService.getMain(hashmap);
		
//		model.addAttribute("page", page);
//		model.addAttribute("listcount", listcount);
//		model.addAttribute("mainlist", mainlist);
//		System.out.println(mainlist.get(0).getProduct_number());
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
	}
	
	@RequestMapping
	public void getVeiwList(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		int limit = 8;
		int listcount = productlistService.getListCount();
		String startrow = Integer.toString((page - 1) * 8 + 1); // 1 9 17 25
		String endrow = Integer.toString(Integer.parseInt(startrow) + limit - 1); // 8 16 24 30
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("startrow", startrow);
		hashmap.put("endrow", endrow);
		//hashmap.put("sort", sort);
		List<ProductVO> viewList = productlistService.getfamousParticipantslist2();
		viewList = productlistService.getParticipantsForMain(hashmap); 
		
//		model.addAttribute("page", page);
//		model.addAttribute("listcount", listcount);
//		model.addAttribute("mainlist", mainlist);
//		System.out.println(mainlist.get(0).getProduct_number());
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
		model.addAttribute("viewList", viewList);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
	}
	
//	@RequestMapping(method = RequestMethod.GET)
//	public void getViewList(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
//		int limit = 8;
//		int listcount = productlistService.getListCount();
//		String startrow = Integer.toString((page - 1) * 8 + 1); // 1 9 17 25
//		String endrow = Integer.toString(Integer.parseInt(startrow) + limit - 1); // 8 16 24 30
//		
//		HashMap<String, String> hashmap = new HashMap<String, String>();
//		hashmap.put("startrow", startrow);
//		hashmap.put("endrow", endrow);
//		//hashmap.put("sort", sort);
//		List<ProductVO> mainlist = productlistService.getMain(hashmap);
//		System.out.println(mainlist.get(0).getProduct_number());
//		int maxpage = listcount / limit;
//		int countPage = 3;
//		if (listcount % limit > 0) {
//			maxpage++;
//		}
//		if (maxpage < page) {
//		    page = maxpage;
//		}
//
//		int startpage = ((page - 1) / 3) * 3 + 1;  
//		int endpage = startpage + countPage - 1;  
//		
//		// 마지막 페이지를 보정
//		if (endpage > maxpage) {
//			endpage = maxpage;
//		}
//		
//		model.addAttribute("page", page);
//		model.addAttribute("listcount", listcount);
//		model.addAttribute("mainlist", mainlist);
//		model.addAttribute("maxpage", maxpage);
//		model.addAttribute("startpage", startpage);
//		model.addAttribute("endpage", endpage);
//	}
//	
//	public String TranslateCate_1(String product_category_1) {
//		
//		switch(product_category_1) {
//			case "cate01":
//				product_category_1 = "패션";
//				break;
//			case "cate02":
//				product_category_1 = "뷰티";
//				break;
//			case "cate03":
//				product_category_1 = "출산/유아동";
//				break;
//			case "cate04":
//				product_category_1 = "전자기기";
//				break;
//			case "cate05":
//				product_category_1 = "가전제품";
//				break;
//			case "cate06":
//				product_category_1 = "가구/인테리어";
//				break;
//			case "cate07":
//				product_category_1 = "반려동물/취미";
//				break;
//			case "cate08":
//				product_category_1 = "도서/음반/문구";
//				break;
//			case "cate09":
//				product_category_1 = "티켓/쿠폰";
//				break;
//			case "cate10":
//				product_category_1 = "스포츠";
//				break;
//			case "cate11":
//				product_category_1 = "공구/산업";
//				break;
//			case "cate12":
//				product_category_1 = "기타잡화";
//				break;
//			default:
//				product_category_1 = "기타잡화";
//				break;
//		}
//		
//		return product_category_1;
//	}
}
