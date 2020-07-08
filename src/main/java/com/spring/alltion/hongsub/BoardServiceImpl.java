package com.spring.alltion.hongsub;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.alltion.productRegistration.ProductVO;
import com.spring.mapper.BoardMapper;

@Service
public class BoardServiceImpl {

	@Autowired
	private SqlSession sqlSession;
	
	public void getBoardList(HttpServletRequest request, Model model) {
		ArrayList<ProductVO> boardlist = new ArrayList<ProductVO>();
		BoardMapper boardmapper = sqlSession.getMapper(BoardMapper.class);
		boardlist = boardmapper.getBoardList();
		model.addAttribute("boardlist",boardlist);
		
	}

	public ProductVO getDetail(int product_number) {
		BoardMapper boardmapper = sqlSession.getMapper(BoardMapper.class);
		ProductVO productvo = boardmapper.getDetail(product_number);
		
		return productvo;
	}

}
