package com.spring.alltion.hongsub;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CommentMapper;

@Service
public class CommentServiceImpl {

	@Autowired
	private SqlSession sqlSession;
	
	public List<CommentVO> commentListService(int comment_product_number) {
		CommentMapper commentmapper = sqlSession.getMapper(CommentMapper.class);
		
		
		return null;
	}

	public int commentInsertService(CommentVO commentvo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
