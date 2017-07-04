package com.sufow.comm;

import java.util.HashMap;
import java.util.Map;

public class CommParam {
	public Map<String ,Object> attr = new HashMap<String, Object>();
	
	public void addAttr(String key,Object val){
		attr.put(key, val);
	}
	
	public Object getAttr(String key) {
		
		if(attr.containsKey(key)){
			return attr.get(key);
		}
		
		return "";
	}
	
	public Map<String ,Object> getAttrMap(){
		return attr;
	}

}
