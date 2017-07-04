package com.sufow.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sufow.service.GoodsService;
import com.sufow.service.UserService;

@Service
public class DecadeService {

	@Autowired
	private UserService userService;
	@Autowired
	private GoodsService goodsService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	
	
	
}
