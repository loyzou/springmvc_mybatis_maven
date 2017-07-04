package com.sufow.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.sufow.comm.CommParam;

/***
 * 商品
 * @author ZQH
 *
 */
@Controller()
@RequestMapping("/goods/")
public class GoodsAction extends BaseAction {

	@RequestMapping("getGoodsRecordList")
	public ModelAndView getGoodsRecordList(HttpServletRequest request){
		CommParam params = new CommParam();
		ModelAndView view = new ModelAndView();
		
		String operType = request.getParameter("operType");
		String operName = request.getParameter("operName");
		String operTime = request.getParameter("operTime");
		params.addAttr("operType", operType);
		params.addAttr("operName", operName);
		params.addAttr("operTime", operTime);
		
		List<Map<String,Object>> recordList = getDecadeService().getGoodsService().queryGoodsRecordList(params);
		
		request.setAttribute("operType", operType);
		request.setAttribute("operName", operName);
		request.setAttribute("operTime", operTime);
		request.setAttribute("recordList", recordList);
		
		view.setViewName("main1");
		return view;
	}
	
	
	/***
	 * 添加商品
	 * @param request
	 * @return
	 */
	@RequestMapping("addGoods")
	public ModelAndView addGoods(HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		CommParam  params = new CommParam();
		
		String typeId = request.getParameter("typeId");
		String goodsName = request.getParameter("goodsName");
		String num = request.getParameter("num");
		String unit = request.getParameter("unit");
		String operTime = request.getParameter("operTime");
		String operName = request.getParameter("operName");
		String remark = request.getParameter("remark");
		
		params.addAttr("typeId", typeId);
		params.addAttr("goodsName", goodsName);
		params.addAttr("num", num);
		params.addAttr("unit", unit);
		params.addAttr("operTime", operTime);
		params.addAttr("operName", operName);
		params.addAttr("remark", remark);
		
		getDecadeService().getGoodsService().addGoods(params);
		
		view.setViewName("main1");
		return view;
	}
	
	/***
	 * 跳转到出库界面
	 * @param request
	 * @return
	 */
	@RequestMapping("reduceGoodsView")
	public ModelAndView reduceGoodsView(HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		
		String goodsId = request.getParameter("goodsId");
		String goodsName = request.getParameter("goodsName");
		request.setAttribute("goodsId", goodsId);
		request.setAttribute("goodsName", goodsName);
		view.setViewName("reduceGoods");

		return view;
	}
	
	/***
	 * 出库
	 * @param request
	 * @return
	 */
	@RequestMapping("reduceGoods")
	public ModelAndView reduceGoods(HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		CommParam params = new CommParam();
		
		String goodsId = request.getParameter("goodsId");
		String num = request.getParameter("num");
		String operTime = request.getParameter("operTime");
		String operName = request.getParameter("operName");
		String remark = request.getParameter("remark");
		params.addAttr("goodsId", goodsId);
		params.addAttr("num", num);
		params.addAttr("operTime", operTime);
		params.addAttr("operName", operName);
		params.addAttr("remark", remark);
		
		getDecadeService().getGoodsService().reduceGoods(params);
		view.setViewName("main1");
		return view;
	}
	
	/***
	 * 添加或修改
	 * @param request
	 * @return
	 */
	@RequestMapping("typeAdd")
	public ModelAndView typeAdd(HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		String typeId = request.getParameter("typeId");
		String typeName = request.getParameter("typeName");
		
		if(typeId != null && !"".equals(typeId)){
			request.setAttribute("operator","修改");
			request.setAttribute("typeId", typeId);
			request.setAttribute("typeName", typeName);
		}else{
			request.setAttribute("operator","添加");
		}
		
		/*try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}*/
		
		view.setViewName("typeAdd");
		return view;
	}
	
	/**
	 * 获取类型列表
	 * @param request
	 * @return
	 */
	@RequestMapping("getTypeList")
	public ModelAndView getTypeList(HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		List<Map<String,Object>> typeList = new ArrayList<Map<String,Object>>();
		typeList = getDecadeService().getGoodsService().queryGoodsTypeList(null);
		request.setAttribute("typeList", typeList);	
		view.setViewName("main");;
		return view;
		
	}
	
	
	
	
	/***
	 * 添加类型
	 * @param request
	 * @return
	 */
	@RequestMapping("addGoodsType")
	public ModelAndView addGoodsType(HttpServletRequest request){
		
		String typeId = request.getParameter("typeId");
		String typeName = request.getParameter("typeName");
		
		CommParam params = new CommParam();
		params.addAttr("typeName", typeName);
		if(!"".equals(typeId)){//修改
			params.addAttr("typeId", typeId);
			getDecadeService().getGoodsService().updateGoodsType(params);
		}else{
			getDecadeService().getGoodsService().addGoodsType(params);
		}
		
		
		ModelAndView view = new ModelAndView();
		
		//查询所有类型
		List<Map<String,Object>> typeList = new ArrayList<Map<String,Object>>();
		typeList = getDecadeService().getGoodsService().queryGoodsTypeList(null);
		request.setAttribute("typeList", typeList);
		
		view.setViewName("main4");
		
		return view;
	}
	
	
	/***
	 * 删除类型
	 * @param request
	 * @return
	 */
	@RequestMapping("delGoodsType")
	@ResponseBody
	public String delGoodsType(HttpServletRequest request){
		
		String typeId = request.getParameter("typeId");
		
		getDecadeService().getGoodsService().delGoodsType(typeId);

		return "success";
	}
}
