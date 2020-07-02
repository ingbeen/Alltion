package com.spring.alltion.login;

import java.util.ArrayList;

public interface MemberService {

		public int insertMember(MemberVO membervo);
		public int userCheck(MemberVO membervo);
		public ArrayList<MemberVO> getMemberlist();
		public MemberVO selectMember(String member_id);
		public int deleteMember(MemberVO membervo);
		public int updateMember(MemberVO membervo);
		int idCheckService(String member_id);
		
}
