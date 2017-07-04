package com.sufow.service.impl;
import org.springframework.stereotype.Service;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;
import com.sufow.dao.impl.DecadeDao;
import com.sufow.service.UserService;

@Service
public class UserServiceImpl extends DecadeDao implements UserService  {

	/***
	 * 查询用户信息
	 */
	public CommResult queryTheUserInfo(CommParam param) {
		return getUserDao().queryTheUserInfo(param);
	}

}
