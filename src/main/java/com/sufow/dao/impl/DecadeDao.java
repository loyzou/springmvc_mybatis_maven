package com.sufow.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sufow.dao.GoodsDao;
import com.sufow.dao.UserDao;

@Service
public class DecadeDao {

	@Autowired
	public UserDao userDao;
	@Autowired
	public GoodsDao goodsDao;
	

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public GoodsDao getGoodsDao() {
		return goodsDao;
	}

	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	
	
	
	
}
