package com.spring.mapper;

import java.util.ArrayList;

import com.spring.alltion.hongsub.BoardVO;

public interface BoardMapper {

	ArrayList<BoardVO> getBoardList();

	BoardVO getDetail(int product_number);

}
