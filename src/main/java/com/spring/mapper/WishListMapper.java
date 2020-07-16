package com.spring.mapper;

import java.util.HashMap;
import java.util.List;

public interface WishListMapper {
	List<Integer> getWishList(String userId);
	void deleteWishList(HashMap<String, Object> hm);
}
