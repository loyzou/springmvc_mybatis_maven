package com.sufow.service;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;

public interface UserService {
	
	/***
	 * 
	 * 查询用户信息
	 * @param param
	 * @return
	 */
	public CommResult queryTheUserInfo(CommParam param);
	
}
