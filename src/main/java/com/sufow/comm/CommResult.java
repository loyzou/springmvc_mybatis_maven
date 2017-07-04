package com.sufow.comm;

import java.util.HashMap;
import java.util.Map;

public class CommResult {

	private Map<String ,Object> resultMap = new HashMap<String, Object>();
	
	private boolean isSuccess;
	
	public CommResult(){
		isSuccess = true;
	}

	public void addAttr(String key,Object val){
		resultMap.put(key, val);
	}
	
	public Object getAttr(String key){
		return resultMap.get(key);
	}


	public boolean isSuccess() {
		return isSuccess;
	}

	public void setSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}
	
	
}
