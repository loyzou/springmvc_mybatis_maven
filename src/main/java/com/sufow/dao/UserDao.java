package com.sufow.dao;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;

public interface UserDao {


	
	/***
	 * 查询用户信息
	 * @param param
	 * @return
	 */
	public CommResult queryTheUserInfo(CommParam param);
}
