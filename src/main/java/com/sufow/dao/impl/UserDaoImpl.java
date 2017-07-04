package com.sufow.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;
import com.sufow.dao.UserDao;

@Service
public class UserDaoImpl implements UserDao {
	private String workspace = "USER";
	
	@Autowired
	public SqlSessionTemplate sqlSessionTemplate;

	/**
	 *查询用户信息
	 */
	public CommResult queryTheUserInfo(CommParam param) {
		CommResult result = new CommResult();
		Map<String,Object> userMap =  sqlSessionTemplate.selectOne(workspace+".query", param.getAttrMap());
		result.addAttr("userMap", userMap);
		return result ;
	}

}
