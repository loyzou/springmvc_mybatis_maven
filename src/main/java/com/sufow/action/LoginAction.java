package com.sufow.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;

@Controller
@RequestMapping(value="/home/")
public class LoginAction extends BaseAction {

	@RequestMapping("index")
	public ModelAndView index(HttpServletRequest request) { 

		ModelAndView view = new ModelAndView();
		view.setViewName("index");

		return view;

	} 
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request){
		CommParam params = new CommParam();
		ModelAndView view = new ModelAndView();

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		params.addAttr("username", username);
		params.addAttr("password", password);
		
		//查询用户和密码
		CommResult result = this.getDecadeService().getUserService().queryTheUserInfo(params);

		if(result.getAttr("userMap") != null){
			Map<String,Object> userMap = (Map<String, Object>) result.getAttr("userMap");
			String username2 = (String)userMap.get("username");
			if(username.equals(username2)){
				view.setViewName("main");
			}
		}else{
			request.setAttribute("message","*用户名或密码错误");
			/*try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}*/
			view.setViewName("index");
			
		}

		return view;
	}

	@RequestMapping("loginOut")
	public ModelAndView loginOut(HttpServletRequest request){

		ModelAndView view = new ModelAndView();
		view.setViewName("index");
		return view;
	}

	@RequestMapping("main1")
	public ModelAndView main1(HttpServletRequest request){
		CommParam params = new CommParam();
		ModelAndView view = new ModelAndView();

		List<Map<String,Object>> recordList = getDecadeService().getGoodsService().queryGoodsRecordList(params);

		if(recordList == null){
			recordList = new ArrayList<Map<String,Object>>();
			Map<String,Object> map1 = new HashMap<String,Object>();
			map1.put("recordId", "1");
			map1.put("typeName", "生活用品");
			map1.put("goodsName", "烟中华");
			map1.put("num", "2");
			map1.put("operType", "入库");
			map1.put("operName", "sufow");
			map1.put("operTime", "2017-06-24");
			map1.put("remark", "入库操作");

			recordList.add(map1);
		}
		request.setAttribute("recordList", recordList);

		view.setViewName("main1");
		return view;
	}

	@RequestMapping("main2")
	public ModelAndView main2(HttpServletRequest request){
		CommParam params = new CommParam();
		ModelAndView view = new ModelAndView();

		List<Map<String,Object>> typeList = getDecadeService().getGoodsService().queryGoodsTypeList(params);

		request.setAttribute("typeList", typeList);

		view.setViewName("main2");
		return view;
	}


	@RequestMapping("main3")
	public ModelAndView main3(HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		CommParam params = new CommParam();      

		List<Map<String,Object>> goodsList = getDecadeService().getGoodsService().queryGoodsList(params);

		request.setAttribute("goodsList", goodsList);

		view.setViewName("main3");
		return view;
	}

	@RequestMapping("main4")
	public ModelAndView main4(HttpServletRequest request){
		ModelAndView view = new ModelAndView();

		List<Map<String,Object>> typeList = new ArrayList<Map<String,Object>>();
		typeList = getDecadeService().getGoodsService().queryGoodsTypeList(null);
		request.setAttribute("typeList", typeList);
		view.setViewName("main4");
		return view;
	}
}
