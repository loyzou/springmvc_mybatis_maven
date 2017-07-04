package com.sufow.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.sufow.service.impl.DecadeService;

@Controller
public class BaseAction {

	@Autowired
	public  DecadeService decadeService;

	public DecadeService getDecadeService() {
		return decadeService;
	}

	public void setDecadeService(DecadeService decadeService) {
		this.decadeService = decadeService;
	}
	
	
}
