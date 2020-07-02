package com.spring.alltion.login;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertMember(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		String email = "";
		email = membervo.getEmail1() + "@" + membervo.getEmail2();
		membervo.setEmail(email);
		int res = memberMapper.insertMember(membervo);
		return res;
	}

	@Override
	public int userCheck(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int res = memberMapper.userCheck(membervo);
		return res;
	}

	@Override
	public ArrayList<MemberVO> getMemberlist() {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<MemberVO> list = memberMapper.getMemberlist();
		return list;
	}

	@Override
	public MemberVO selectMember(String member_id) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		
		MemberVO vo = memberMapper.selectMember(member_id);
		return vo;
	}

	@Override
	public int deleteMember(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int res = memberMapper.deleteMember(membervo);
		return res;
	}

	@Override
	public int updateMember(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);	
		int res = memberMapper.updateMember(membervo);
		return res;
	}

	@Override
	public int idCheckService(String member_id) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		return memberMapper.idCheckService(member_id);
	}

}
